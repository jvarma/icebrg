require 'spec_helper'

describe "StaticPages" do

	subject {
		page
	}

	describe "Home page" do

		before {
			visit root_path
		}

		it {
			should have_selector('title', text: full_title('home'))	
		} 

	end


	describe "Help page" do

		before {
			visit help_path
		}

		it {
			should have_selector('h1', text: "help")
		}

		it {
			should have_selector('title', text: full_title('help'))
		}

	end

	describe "Terms of Use page" do

		before {
			visit tou_path
		}

		it {
			should have_selector('h1', text: "terms of use")
		}

		it {
			should have_selector('title', text: full_title('terms of use'))
		}

	end

	describe "About icebrg page" do

		before {
			visit about_path
		}

		it {
			should have_selector('h1', text: "about icebrg")
		}

		it {
			should have_selector('title', text: full_title('about'))
		}

	end

	describe "contact page" do

		before {
			visit contact_path
		}

		it {
			should have_selector('h1', text: "contact icebrg")
		}

		it {
			should have_selector('title', text: full_title('contact'))
		}

	end

end
