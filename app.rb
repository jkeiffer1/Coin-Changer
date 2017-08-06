require "sinatra"
require_relative "coin_changer.rb"

get '/' do
	erb :names
end

post '/names' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	redirect '/coins?firstname=' + firstname + "&lastname=" + lastname
end

get '/coins' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	erb :coins, locals:{firstname: firstname, lastname: lastname}
end

post '/coins' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	total = params[:total]
	change = coin_changer(total.to_i)
	redirect '/results?firstname=' + firstname + "&lastname=" + lastname + "&total=" + total + "&change=" + change
end

get '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	total = params[:total]
	change = params[:change]
	erb :results, locals:{firstname: firstname, lastname: lastname, total: total, change: change}
end

post '/results' do
	firstname = params[:firstname]
	lastname = params[:lastname]
	total = params[:total]
	change = params[:change]
	redirect '/coins?firstname=' + firstname + "&lastname=" + lastname
end