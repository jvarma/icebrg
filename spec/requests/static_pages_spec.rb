require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {
		"icebrg -"
	}

	describe "Home page" do

		it "should have 'icebrg - home' in the page title" do
			visit '/static_pages/home'
			page.should have_selector('title', 
				:text => "#{base_title} home", :case_sensitive => true)
		end

	end


	describe "Help page" do

		it "should have 'help' in an h1" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => "help", :case_sensitive => true)
		end

		it "should have 'icebrg - help' in title" do
			visit '/static_pages/help'
			page.should have_selector('title',
				:text => "#{base_title} help", :case_sensitive => true)
		end

	end

	describe "Terms of Use page" do

		it "should have 'terms of use' in an h1" do
			visit '/static_pages/termsofuse'
			page.should have_selector('h1', :text => "terms of use")
		end

		it "should have 'icebrg - terms of use' in title" do
			visit '/static_pages/termsofuse'
			page.should have_selector('title', :text => "#{base_title} terms of use")
		end

	end


end
