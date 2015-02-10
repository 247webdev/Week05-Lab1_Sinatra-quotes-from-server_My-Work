require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require './frank'
also_reload './frank.rb'

configure :development do
	use BetterErrors::Middleware
	BetterErrors.application_root = __dir__
end

# before filter
before do
	@greeter = Greeter.new
end

# our application's routes
get '/hi' do
	@greeter.greet
end

# /photo route
get '/photo' do
	send_file "./images/#{rand(5)}.jpeg"
end

# return quotes matching a tag
get '/quote/:tag' do
	@greeter.quote params[:tag].to_sym
end

# default /quote route
get '/quote' do
	@greeter.quote
end
