require_relative "../app"
require "rack/test"

RSpec.describe "App" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context "GET /" do
    it "returns the IP address" do
      current_ip = Socket.ip_address_list.
        detect { |intf| intf.ipv4_private? }.
        ip_address

      get "/"

      expect(last_response.body).to eq("ip-address: #{current_ip}")
    end
  end
end
