require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place_of_waste')

get('/login') do
	@current_user = nil
	erb(:login)
end

post('/add_user') do
	@user_name = params['user_name']
	@user_password = params['user_password']
	@current_user = new.User({:user_name => @user_name, :user_password => @user_password})
	redirect('/home')
end
# get('/home')