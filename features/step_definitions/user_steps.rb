## GIVEN ##
Given /^there are the following users:$/ do |table|
	table.hashes.each do |attributes|
		unconfirmed = attributes.delete("unconfirmed") == "true"
		@user = User.create!(attributes)
		@user.confirm! unless unconfirmed
	end
end


## WHEN ##


When /^I go to (.+)$/ do |page_name|
	visit path_to(page_name)
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field_name, value|
  fill_in field_name, with: value
end

When /^I press "([^"]*)"$/ do |button_name|
	click_button button_name
end


## THEN ##
Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content(message)
end

