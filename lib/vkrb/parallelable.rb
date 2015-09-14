module VKRB
  module Parallelable
    def in_parallel
      Typhoeus::Hydra.new.tap do |hydra|
        yield hydra
        hydra.run
      end
    end
  end
end
