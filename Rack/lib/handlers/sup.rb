# frozen_string_literal: true

module Handlers
  class Sup < Base

    def initialize(request)
      @request = request
    end

    def response
      if @request.path_info.match '/api/sups/\d+'
        sup_id = @request.path_info.split('/').last
        sup = ::Sup.find_by(id: sup_id)
        return response_404 unless sup

        response_success(sup)
      elsif @request.get? && @request.path_info.start_with?('/api/sups')
        sups = ::Sup.select(:id, :model, :length, :preview_url, :user_quantity, :description)

        response_success(sups)
      elsif @request.post? && @request.path_info.start_with?('/api/sups')

        sup_data = JSON.parse(@request.body.read)
        sup = ::Sup.create(sup_data.slice('model', 'length', 'preview_url', 'user_quantity', 'description'))

        response_success(sup)
      else
        response_404
      end
    end
  end
end