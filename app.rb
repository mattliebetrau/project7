# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
  	last_modified Time.now
    erb :"index#{ rand(3) + 1 }"
  end
end