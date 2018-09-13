require 'rails_helper'

RSpec.describe Driver, type: :model do
	context 'validation test' do 
		it 'ensures first name presence' do
			driver = Driver.new(last_name: 'Last', email: 'sample@example.com', password: '12345').save
			expect(driver).to eq(false)
		end

		it 'ensures last name presence' do
			driver = Driver.new(first_name: 'First', email: 'sample@example.com', password: '12345').save
			expect(driver).to eq(false)
		end 

		it 'ensures email presence' do
			driver = Driver.new(first_name: 'First', last_name: 'Last', password: '12345').save
			expect(driver).to eq(false)
		end

		it 'ensures password presence' do
			driver = Driver.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
			expect(driver).to eq(false)
		end


		it 'ensures phone number presence' do
			driver = Driver.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
			expect(driver).to eq(false)
		end


		it 'ensures confirm password presence' do
			driver = Driver.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
			expect(driver).to eq(false)
		end

		it 'should save successfully' do
			driver = Driver.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com', password: '12345').save
			expect(driver).to eq(true)
		end
	end 
end 


# describe "Driver visit their show page" do
# 	context "if account has not been authenticated with Go-Rush" do
# 		it "driver authorizes account with Go-Rush", :driver => :mechanize do
# 			driver = Driver.create!(first_name: "budi", last_name: "wijaya", email: "budi@mail.com", password: '12345')

# 			allow_any_instance_of(ApplicationController).to receive(:current_Driver).and_return(Driver)

# 			visit "/Drivers/#{Driver.id}"

# 			expect(page).to have_link("Add Go-Rush to Accunt")
# 			expect(Driver.find(driver.id).go-rush_athlete_id).to be_nil
# 			expect(Driver.find(driver.id).go-rush_access_token).to be_nil

# 			click_on "Add Go-Rush to Account"

# 			fill_in :email, with: ENV('Go-Rush_TEST_ENVIRONMENT_EMAIL')
# 			fill_in :password, with: ENV('Go-Rush_TEST_ENVIRONMENT_PASSWORD')

# 			click_button "Log In"

# 			click_button "Authorize"

# 			expect(current_path).to eq(driver_path(driver))
# 			expect(Driver.find(driver.id).go-rush_athlete_id).to be_truthy
# 			expect(Driver.find(driver.id).go-rush_access_token).to be_truthy
# 		end 
# 	end 
# end 

	
	# context 'scope tests' do
	# 	let (:params) { {first_name: 'First', last_name: 'Last', email: 'sample@example.com'} }
	# 	before(:each) do
	# 		Driver.new(params).save
	# 		Driver.new(params).save
	# 		Driver.new(params.merge(active: true)).save
	# 		Driver.new(params.merge(active: true)).save
	# 		Driver.new(params.merge(active: true)).save
	# 	end 

	# 	it 'should return active Drivers' do	
	# 		expect(Driver.active_Drivers.size).to eq(3)
	# 	end 
	
	# 	it 'should return inactive Drivers' do	
	# 		expect(Driver.inactive_Drivers.size).to eq(2)
	# 	end
	
	# end


