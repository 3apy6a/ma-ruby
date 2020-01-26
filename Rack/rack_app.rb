#frozen_string_literal: true

require './config/initializers/initializer'
require './run.rb'

class RackApp
  def call(env)
    request = Rack::Request.new(env)

    case request.path.start_with?
    when '/api/sups'
      Handlers::Sup.new(request).response
    when 'api/customers'
      Handlers::Customer.new(request).response
    else
      Rack::Response.new({ error: 'Not Found' }.to_json, 400, HEADERS).finish
    end
  end
end

#-------------------------------------------------------
#require 'json'
#require './run.rb'
#
#class RackApp
#  HEADERS = { 'Content-Type' => 'application/json' }.freeze
#
#  def call(env)
#    request = Rack::Request.new(env)
#    if request.path_info.match '/api/sups/\d+'
#      sup_id = request.path_info.split('/').last
#      sup = Sup.find_by(id: sup_id)
#      return respond_404 unless sup
#
#      Rack::Response.new(sup.to_json, 200, HEADERS).finish
#    elsif request.get? && request.path_info.start_with?('/api/sups')
#      sups = Sup.select(:id, :model, :preview_url, :description)
#
#      Rack::Response.new(sups.to_json, 200, HEADERS).finish
#    elsif request.post? && request.path_info.start_with?('/api/sups')
#
#      sup_data = JSON.parse(request.body.read)
#      sup = Sup.create(sup_data.slice('model', 'preview_url', 'user_quantity', 'length', 'deskription'))
#      Rack::Response.new(sup.to_json, 200, HEADERS).finish
#
#      respond_404
#    end
#  end
#
#  def respond_404
#    Rack::Response.new({ error: 'Not Found' }.to_json, 200, HEADERS).finish
#  end
#end