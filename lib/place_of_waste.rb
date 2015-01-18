class User
	@@all_users = []
	attr_reader(:user_id, :user_name, :user_password, :user_score)

	define_method(:initialize) do |attributes|
		@user_id = @@all_users.length + 1
		@user_name = attributes.fetch(:user_name)
		@user_password = attributes.fetch(:user_password)
		@user_score = 0
		@@all_users.push(self)
	end
end