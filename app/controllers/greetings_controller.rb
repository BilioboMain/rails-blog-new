# frozen_string_literal: true

class GreetingsController < ApplicationController
  include ActionController::Live

  def hello; end

  # def stream
  #  response.headers['Content-Type'] = 'text/event-stream'
  #  10.times do |i|
  #    response.stream.write("Hellow, #{i}")
  #    sleep 1
  #  end
  #  response.stream.close
  # end
end
