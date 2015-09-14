module VKRB
  class Authorizer
    REDIRECT_URI  = 'blank.html'
    DISPLAY_TYPE  = 'page'
    RESPONSE_TYPE = 'token'

    attr_accessor :app_id, :user, :pass, :scope

    def initialize(app_id:, user:, pass:, scope:)
      self.app_id = app_id
      self.user   = user
      self.pass   = pass
      self.scope  = scope
    end

    def config
      @config ||= configure
    end

    private

    def parse_form(form_doc)
      {}.tap do |form_data|
        form_doc.css('input[type="text"], input[type="password"], input[type="hidden"]').each do |input|
          form_data[input[:name]] = input[:value]
        end
        form_data['expire'] = '0'
        form_data['submit'] = ''
        form_data['email']  = user
        form_data['pass']   = pass
      end
    end

    def configure
      digest = Digest::MD5.hexdigest("#{app_id} #{user} #{pass}")
      filepath = "/tmp/vkrb.#{digest}.config"

      if File.exist?(filepath)
        access_token, user_id = File.read(filepath).split
      end

      if !access_token || !user_id
        access_token, user_id = authorize!
        File.write(filepath, [access_token, user_id].join(' '))
      end

      {
        access_token: access_token,
        user_id:      user_id
      }
    end

    def authorize!
      STDOUT.puts 'authorizing...'
      request = Typhoeus::Request.new('https://oauth.vk.com/authorize',
                                      cookiefile: './cookie',
                                      cookiejar:  './cookie',
                                      params: {
                                        client_id:     app_id,
                                        redirect_uri:  REDIRECT_URI,
                                        display:       DISPLAY_TYPE,
                                        response_type: RESPONSE_TYPE,
                                        scope:         scope
                                      })

      response = request.run

      form_doc = Nokogiri::HTML(response.body).css('form').first
      form_url = form_doc[:action]
      form_data = parse_form(form_doc)

      login_request = Typhoeus::Request.new(form_url,
                                            cookiefile: './cookie',
                                            cookiejar:  './cookie',
                                            body: URI.encode_www_form(form_data),
                                            headers: {
                                              'content-type' => 'application/x-www-form-urlencoded'
                                            },
                                            method: :post)
      login_response = login_request.run

      login_response = Typhoeus::Request.new(login_response.headers[:location], cookiejar: './cookie', cookiefile: './cookie').run
      login_response = Typhoeus::Request.new(login_response.headers[:location], cookiejar: './cookie', cookiefile: './cookie').run

      access_token_uri = URI.parse login_response.headers[:location]

      CGI.parse(access_token_uri.fragment)
        .values_at('access_token', 'user_id')
        .map(&:first)
    end
  end
end
