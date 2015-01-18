require('rspec')
require('place_of_waste')

describe('User') do 
	describe('#new') do
		it ('saves a new users information') do
			test_user = User.new({:user_name => "BobbyBottleService", :user_password => "cpkcurcy"})
			expect(test_user.user_name()).to(eq("BobbyBottleService"))
			expect(test_user.user_password()).to(eq("cpkcurcy"))
		end
	end
	
end