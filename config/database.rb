# frozen_string_literal: true

require 'dotenv/load'

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_development',
    pool: 5,
    username: ENV['pg_user'],
    password: ENV['pg_pass'],
    host: ENV['pg_host']
  }
end

configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_test',
    pool: 5,
    username: ENV['pg_user'],
    password: ENV['pg_pass'],
    host: ENV['pg_host']
  }
end

configure :production do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_production',
    pool: 5,
    username: ENV['pg_user'],
    password: ENV['pg_pass'],
    host: ENV['pg_host']
  }
end
