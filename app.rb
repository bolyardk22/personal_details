require 'sinatra'

get '/' do
	erb :index
end

post '/name' do
    name = params[:user_name]
    redirect '/age?user_name=' + name
end

get '/age' do
	name = params[:user_name]
	erb :age, :locals=> {:name=>name}
end

post '/age' do
	age = params[:age]
	name = params[:user_name]
	redirect '/three_numbers?name' + '&name=' + name + '&age=' + age
end

get '/three_numbers' do
	age = params[:age]
	name = params[:name]
	erb :three_numbers, :locals=> {:name=>name, :age=>age}
end

