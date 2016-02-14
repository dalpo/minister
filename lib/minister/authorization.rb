module Minister
  # Minister Authorization abstract layer.
  class Authorization
    attr_reader :adapter

    def initialize
      @adapter = Minister.authorization_adapter.to_s.constantize.new
    end
  end
end
