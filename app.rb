# frozen_string_literal: true

require 'json'
require 'sinatra'
require 'sinatra/activerecord'

require './config/database'

Dir['./app/models/*.rb'].each { |file| require file }
Dir['./app/controllers/*.rb'].each { |file| require file }

class App < Sinatra::Base
  attr_reader :app

  def initialize
    @app = Rack::Builder.app do
      map('/login') { run LoginsController.new }
    end
  end

  def call(env)
    app.call(env)
  end
end
