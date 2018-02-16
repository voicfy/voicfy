require 'accepton/api/planning'
require 'accepton/api/promotion'
require 'accepton/api/querying'
require 'accepton/api/refunding'
require 'accepton/api/subscribing'
require 'accepton/api/tokenization'

module AcceptOn
  class Client
    include AcceptOn::API::Planning
    include AcceptOn::API::Promotion
    include AcceptOn::API::Querying
    include AcceptOn::API::Refunding
    include AcceptOn::API::Subscribing
    include AcceptOn::API::Tokenization

    attr_accessor :api_key, :environment
    attr_writer :user_agent

    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [AcceptOn::Client]
    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      set_defaults
      yield(self) if block_given?
    end

    # @return [Boolean]
    def api_key?
      !!api_key
    end

    # @return [String]
    def user_agent
      @user_agent ||= "accepton-ruby/#{AcceptOn::VERSION}"
    end

    private

    # @return [void]
    def set_defaults
      self.environment = :production unless environment
    end
  end
end
