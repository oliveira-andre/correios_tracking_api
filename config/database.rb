# frozen_string_literal: true

require 'dotenv/load'

configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_test',
    pool: 5,
    host: ENV['DATABASE_HOST'] || 'postgres',
    username: ENV['POSTGRES_USER'] || 'postgres',
    password: ENV['POSTGRES_PASSWORD']
  }
end

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'correios_tracking_api_development',
    pool: 5,
    host: ENV['DATABASE_HOST'] || 'postgres',
    username: ENV['POSTGRES_USER'] || 'postgres',
    password: ENV['POSTGRES_PASSWORD']
  }
end
