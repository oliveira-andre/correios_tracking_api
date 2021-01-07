# frozen_string_literal: true

class HomeController < ApplicationController
  get '/' do
    content_type :json, charset: 'utf-8'
    { ok: true }.to_json
  end
end
