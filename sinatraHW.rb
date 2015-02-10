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
	x = 1 + rand(5)
	# "Photo #{x} was chosen."
	send_file "./images/#{x}.jpeg"
end

# return quotes matching a tag
get '/quote/:tag' do
	# raise "Your tag must be either 'love', 'life' or, 'alcohol'." if (params[:tag] != 'love') and  (params[:tag] != 'life') and  (params[:tag] != 'alcohol')
	@greeter.quote params[:tag].to_sym
end

# default /quote route
get '/quote' do
	@greeter.quote
end
