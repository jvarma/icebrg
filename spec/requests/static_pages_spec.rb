require 'spec_helper'

describe "StaticPages" do

	subject {
		page
	}

	shared_examples_for "all static pages" do
		it {
			should have_selector('title', text: full_title(page_title))
		}
	end

	describe "Home page" do

		before {
			visit root_path
		}

		let(:page_title) {
			'home'
		}

		it_should_behave_like "all static pages" 

	end


	describe "Help page" do

		before {
			visit help_path
		}

		let(:page_title) {
			'help'
		}

		it {
			should have_selector('h1', text: "help")
		}

		it_should_behave_like "all static pages"

	end

	describe "Terms of Use page" do

		before {
			visit tou_path
		}

		let(:page_title) {
			'terms of use'
		}

		it {
			should have_selector('h1', text: "terms of use")
		}

		it_should_behave_like "all static pages"

	end

	describe "About icebrg page" do

		before {
			visit about_path
		}

		let(:page_title) {
			'about'
		}

		it {
			should have_selector('h1', text: "about icebrg")
		}

		it_should_behave_like "all static pages"

	end

	describe "contact page" do

		before {
			visit contact_path
		}

		let(:page_title) {
			'contact'
		}

		it {
			should have_selector('h1', text: "contact icebrg")
		}

		it_should_behave_like "all static pages"

	end

end
