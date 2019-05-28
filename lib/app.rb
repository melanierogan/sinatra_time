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

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

