# frozen_string_literal: true

module Circular
  ##
  # API wrapper class
  class API
    DEFAULT_DOMAIN = 'circleci.com'.freeze
    DEFAULT_PATH = 'api/v1'.freeze

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
