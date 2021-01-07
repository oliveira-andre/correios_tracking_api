# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'sinatra/base'
Dir['./initializers/*.rb'].sort.each { |file| require file }
Dir['./app/{helpers,controllers}/*.rb'].sort.each { |file| require file }

Bundler.require(:default, settings.env)

map('/') { run HomeController }
