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
	redirect '/three_numbers?user_name=' + '&user_name=' + user_name + '&age=' + age
end

get '/three_numbers' do
	age = params[:age]
	user_name = params[:user_name]
	erb :three_numbers, :locals=> {:user_name=>user_name, :age=>age}
end

post '/three_numbers' do
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	age = params[:age]
	user_name = params[:user_name]
	totalnumber = sum(num1.to_i,num2.to_i,num3.to_i)
	redirect '/age?user_name=' + user_name
#	redirect '/total?user_name=' + '&user_name=' + user_name + '&age=' + age + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&totalnumber=' + totalnumber
end

get '/total' do
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	age = params[:age]
	user_name = params[:user_name]
	totalnumber = params[:totalnumber]
	erb :total, :locals=> {:user_name=>user_name, :age=>age, :num1=>num1, :num2=>num2, :num3=>num3, :totalnumber=>totalnumber}
end