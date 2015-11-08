require 'userinput'
require 'keychain'

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
      next unless RUBY_PLATFORM.match(/darwin/)
      entry = Keychain.open(Keychain.default.path).internet_passwords.where(
        service: domain
      ).first
      return nil unless entry
      entry.password
    end
  end
end

require 'circular/api'
