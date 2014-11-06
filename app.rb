require 'sinatra'

set :static, true 

bands = ['Nine Inch Nails', 'Justin Beiber', 'Katy Perry', 'Spoon', 'Radiohead', 'Elvis']
venues = ["Hollywood Bowl", "The Greek", "Gramma's Livingroom", "Staples", "The Roxy"]
seats = ["VIP", "GA", "PL (parking lot)"]

get '/' do
	@bands = bands
	@venues = venues
	@seats = seats
	erb :home
end

get '/results' do
	band  = params['bands']
	venue = params['venues']
	seat  = params['seats']
	@band = band
	@venues = venue
	@seats = seat
	erb :results
end

