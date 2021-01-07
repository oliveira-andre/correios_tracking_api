# frozen_string_literal: true

require 'dotenv/load'
require 'json'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require './config/database'

class ApplicationController < Sinatra::Base
end
