require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {
		"icebrg -"
	}

	describe "Home page" do

		it "should have 'icebrg - home' in the page title" do
			visit root_path
			page.should have_selector('title', text: "#{base_title} home")
		end

	end


	describe "Help page" do

		it "should have 'help' in an h1" do
			visit help_path
			page.should have_selector('h1', text: "help")
		end

		it "should have 'icebrg - help' in title" do
			visit help_path
			page.should have_selector('title', text: "#{base_title} help")
		end

	end

	describe "Terms of Use page" do

		it "should have 'terms of use' in an h1" do
			visit termsofuse_path
			page.should have_selector('h1', text: "terms of use")
		end

		it "should have 'icebrg - terms of use' in title" do
			visit termsofuse_path
			page.should have_selector('title', text: "#{base_title} terms of use")
		end

	end

	describe "About icebrg page" do

		it "should have 'about icebrg' in an h1" do
			visit about_path
			page.should have_selector('h1', text: "about icebrg")
		end


		it "should have 'icebrg - about' in title" do
			visit about_path
			page.should have_selector('title', text: "#{base_title} about")
		end

	end

	describe "contact page" do

		it "should have 'contact icebrg' in an h1" do
			visit contact_path
			page.should have_selector('h1', text: "contact icebrg")
		end

		it "should have 'icebrg - contact' in title" do
			visit contact_path
			page.should have_selector('title', text: "#{base_title} contact")
		end

	end


end
