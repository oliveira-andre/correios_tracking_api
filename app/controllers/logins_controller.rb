# frozen_string_literal: true

class LoginsController < ApplicationController
  get '/' do
    serializer({ data: true })
  end
end
