# frozen_string_literal: true

require 'json'
Dir['./app/*/*/*.rb'].sort.each { |file| require file }
Dir['./app/*/*.rb'].sort.each { |file| require file }

class App < Sinatra::Base
  get '/' do
    content_type :json, charset: 'utf-8'
    { ok: true }.to_json
  end
end
