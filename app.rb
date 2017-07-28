require 'sinatra'
require_relative 'sum.rb'

get '/' do
	erb :index
end

post '/name' do
    user_name = params[:user_name]
    redirect '/age?user_name=' + user_name
end

get '/age' do
	user_name = params[:user_name]
	erb :age, :locals=> {:user_name=>user_name}
end

post '/age' do
	age = params[:age]
	user_name = params[:user_name]
	redirect '/hair_color?user_name=' + '&user_name=' + user_name + '&age=' + age
end

get '/hair_color' do
	user_name = params[:user_name]
	age = params[:age]
	erb :hair_color, :locals=> {:user_name=>user_name, :age=>age}
end

post '/hair_color' do
	age = params[:age]
	user_name = params[:user_name]
	hair_color = params[:hair_color]
	redirect '/eye_color?user_name=' + '&user_name=' + user_name + '&age=' + age + '&hair_color=' + hair_color
end

get '/eye_color' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	erb :eye_color, :locals=> {:user_name=>user_name, :age=>age, :hair_color=>hair_color}
end

post '/eye_color' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	redirect '/fave_food?user_name=' + '&user_name=' + user_name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color=' + eye_color
end

get '/fave_food' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	erb :fave_food, :locals=> {:user_name=>user_name, :age=>age, :hair_color=>hair_color, :eye_color=>eye_color}
end

post '/fave_food' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	redirect '/fave_drink?user_name=' + '&user_name=' + user_name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color=' + eye_color + '&fave_food=' + fave_food
end

get '/fave_drink' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	erb :fave_drink, :locals=> {:user_name=>user_name, :age=>age, :hair_color=>hair_color, :eye_color=>eye_color, :fave_food=>fave_food}
end

post '/fave_drink' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	fave_drink = params[:fave_drink]
	redirect '/three_numbers?user_name=' + '&user_name=' + user_name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color=' + eye_color + '&fave_food=' + fave_food + '&fave_drink=' + fave_drink
end

get '/three_numbers' do
	user_name = params[:user_name]
	age = params[:age]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	fave_drink = params[:fave_drink]
	erb :three_numbers, :locals=> {:user_name=>user_name, :age=>age, :hair_color=>hair_color, :eye_color=>eye_color, :fave_food=>fave_food, :fave_drink=>fave_drink}
end

post '/three_numbers' do
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	fave_drink = params[:fave_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	age = params[:age]
	user_name = params[:user_name]
	totalnumber = sum(num1.to_i,num2.to_i,num3.to_i)
	redirect '/total?user_name=' + '&user_name=' + user_name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color=' + eye_color + '&fave_food=' + fave_food + '&fave_drink=' + fave_drink + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&totalnumber=' + totalnumber
end

get '/total' do
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	fave_food = params[:fave_food]
	fave_drink = params[:fave_drink]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	age = params[:age]
	user_name = params[:user_name]
	totalnumber = sum(num1.to_i,num2.to_i,num3.to_i)
	erb :total, :locals=> {:user_name=>user_name, :age=>age, :hair_color=>hair_color, :eye_color=>eye_color, :fave_food=>fave_food, :fave_drink=>fave_drink, :num1=>num1, :num2=>num2, :num3=>num3, :totalnumber=>totalnumber}
end