require 'spec_helper'

describe "SignUps" do

	subject {
		page
	}

	before {
		visit new_user_registration_path
	}

	describe "with valid information" do

		before do

			fill_in "Email", with: "user@example.com"
			fill_in "Password", with: "foobar"
			fill_in "Password confirmation", with: "foobar"
			 
		end

		it "should create a user" do

			expect do
				click_button "Sign up"
				should have_content('Welcome! You have signed up successfully.')
			end.to change(User, :count).by(1)
			 
		end

				
	end

  

end
