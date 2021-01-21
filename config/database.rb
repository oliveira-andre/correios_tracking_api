# frozen_string_literal: true

require 'dotenv/load'

configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_test',
    pool: 5,
    host: ENV['PG_HOST'],
    username: ENV['PG_USER'],
    password: ENV['PG_PASS']
  }
end

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_development',
    pool: 5,
    host: ENV['PG_HOST'],
    username: ENV['PG_USER'],
    password: ENV['PG_PASS']
  }
end
