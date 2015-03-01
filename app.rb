# app.rb
require 'sinatra'
require 'sinatra/content_for'
require 'holidapi'

class MyWebApp < Sinatra::Base
  helpers Sinatra::ContentFor
  get '/' do
    params['country'] ||= 'us'
    params['year'] ||= '2015'
    params['month'] ||= '1'
    @holidays = HolidApi.get(country: params['country'], year: params['year'], month: params['month'])
    erb :index
  end
end


