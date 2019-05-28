require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Bum on it! AAAAAh, this sucks"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end