require_relative "../app"
require "rack/test"

RSpec.describe "App" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context "GET /" do
    it "returns the IP address" do
      get "/"

      expect(last_response.body).to eq(ENV.inspect)
    end
  end
end
