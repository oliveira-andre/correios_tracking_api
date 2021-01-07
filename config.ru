# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'sinatra/base'
Dir['./initializers/*.rb'].sort.each { |file| require file }
Dir['./app/models/*.rb'].sort.each { |file| require file }
Dir['./app/controllers/*.rb'].sort.each { |file| require file }
Dir['./app/helpers/*.rb'].sort.each { |file| require file }

Bundler.require(:default, settings.env)

map('/') { run HomeController }
