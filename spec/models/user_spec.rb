require 'rails_helper'

RSpec.describe User, type: :model do

	context 'validation test' do 
		it 'ensures first name presence' do
			user = User.new(last_name: 'Last', email: 'sample@example.com', password: '12345').save
			expect(user).to eq(false)
		end

		it 'ensures last name presence' do
			user = User.new(first_name: 'First', email: 'sample@example.com', password: '12345').save
			expect(user).to eq(false)
		end 

		it 'ensures email presence' do
			user = User.new(first_name: 'First', last_name: 'Last', password: '12345').save
			expect(user).to eq(false)
		end

		it 'ensures password presence' do
			user = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
			expect(user).to eq(false)
		end

		it 'should save successfully' do
			user = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com', password: '12345').save
			expect(user).to eq(true)
		end
	end 
end 






# describe "User visit their show page" do
# 	context "if account has not been authenticated with Go-Rush" do
# 		it "user authorizes account with Go-Rush", :driver => :mechanize do
# 			user = User.create!(first_name: "budi", last_name: "wijaya", email: "budi@mail.com", password: '12345')

# 			# allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

# 			# visit "/users/#{user.id}"

# 			expect(page).to have_link("Add Go-Rush to Accunt")
# 			expect(User.find(user.id).go-rush_athlete_id).to be_nil
# 			expect(User.find(user.id).go-rush_access_token).to be_nil

# 			click_on "Add Go-Rush to Account"

# 			fill_in :email, with: ENV('Go-Rush_TEST_ENVIRONMENT_EMAIL')
# 			fill_in :password, with: ENV('Go-Rush_TEST_ENVIRONMENT_PASSWORD')

# 			click_button "Log In"

# 			click_button "Authorize"

# 			expect(current_path).to eq(user_path(user))
# 			expect(User.find(user.id).go-rush_athlete_id).to be_truthy
# 			expect(User.find(user.id).go-rush_access_token).to be_truthy
# 		end 
# 	end 
# end 



	# context 'scope tests' do
	# 	let (:params) { {first_name: 'First', last_name: 'Last', email: 'sample@example.com'} }
	# 	before(:each) do
	# 		User.new(params).save
	# 		User.new(params).save
	# 		User.new(params.merge(active: true)).save
	# 		User.new(params.merge(active: true)).save
	# 		User.new(params.merge(active: true)).save
	# 	end 

	# 	it 'should return active users' do	
	# 		expect(User.active_users.size).to eq(3)
	# 	end 
	
	# 	it 'should return inactive users' do	
	# 		expect(User.inactive_users.size).to eq(2)
	# 	end
	
	# end


