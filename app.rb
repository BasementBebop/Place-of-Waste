require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place_of_waste')

get('/') do
	

erb(:login)
end