require 'json'
module Handlers
  class Base

    HEADERS = { 'Content-Type' => 'application/json' }.freeze

    def response_success(body)
      Rack::Response.new(body.to_json, 200, HEADERS).finish
    end

    def response_404
      Rack::Response.new( { error: 'Not found' }.to_json, 404, HEADERS ).finish
    end
  end
end