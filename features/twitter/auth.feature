Feature: Twitter authentication
	In order to sign in using twitter
	As a twitter user
	I want to click on the twitter icon and sign in

Background:
	Given we are mocking a successful twitter response

Scenario: Signing in with twitter
	Given I am on the home page
	When I follow "sign_in_with_twitter"
	Then I should see "Signed in with Twitter successfully."
	And I should see "Signed in as A Twit (@twit)"

	
