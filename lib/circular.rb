require 'userinput'
require 'keylime' if RUBY_PLATFORM =~ /darwin/

##
# Define circular module
module Circular
  class << self
    def new(*args)
      self::API.new(*args)
    end

    def load_token(domain)
      lookup_token(domain) || UserInput.new(message: "Token for #{domain}").ask
    end

    private

    def lookup_token(domain)
      return unless RUBY_PLATFORM =~ /darwin/
      entry = Keylime.new(server: domain).get!("Token for #{domain}")
      return nil unless entry
      entry.password
    end
  end
end

require 'circular/api'
