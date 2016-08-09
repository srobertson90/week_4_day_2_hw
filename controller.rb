require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('models/order')

get '/order/new' do
  erb(:new)
end

post '/order/confirmed' do
  @order = Order.new(params)
  @order.save()
  erb(:create)
end

get '/orders' do
  @orders = Order.all()
  erb(:index)
end

get '/' do
  erb(:home)
end