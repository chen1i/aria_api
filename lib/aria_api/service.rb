module AriaApi
  class Service
    def self.actions
      api_version = AriaApi::Configuration.api_version
      wsdl_name = "complete-doc_literal_wrapped.wsdl"
      #url = "https://secure.future.stage.ariasystems.net/api/Advanced/wsdl/#{api_version}/#{wsdl_name}"
      url = "#{File.dirname(__FILE__)}/wsdl/#{wsdl_name}"
      client = Savon.client(wsdl: url)
      @actions ||= client.operations
    end
  end
end
