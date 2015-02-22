# app.rb
require 'sinatra'
require 'sinatra/content_for'
require 'cat_api'
require 'holidapi'

class MyWebApp < Sinatra::Base
  helpers Sinatra::ContentFor
  get '/' do
  	last_modified Time.now
    @holidays_year_current = HolidApi.get(year: Time.now.year)
    @holidays_month_current = HolidApi.get(month: Time.now.month)
    @holidays_matt = HolidApi.get(year: 1992, month: 8)
    erb :index
  end
end


