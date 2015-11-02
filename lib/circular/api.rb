module Circular
  class API
    DEFAULT_DOMAIN = 'circleci.com'
    DEFAULT_PATH = 'api/v1'

    def initialize(params = {})
      @options = params
    end

    private

    def domain
      @domain ||= @options[:domain] || DEFAULT_DOMAIN
    end

    def path
      @path ||= @options[:path] || DEFAULT_PATH
    end

    def base
      @base ||= "https://#{domain}/#{path}"
    end
  end
end
