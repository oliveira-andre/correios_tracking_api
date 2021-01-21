# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  def serializer(params = {})
    { ok: params[:data] }.to_json
  end
end
