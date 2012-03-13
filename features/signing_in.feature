Feature: Signing in
	In order to use the site
	As a user
	I want to be able to sign in

	Scenario: Signing in via confirmation

		Given there are the following users:
			| email				| password 	|	unconfirmed	|
			| user@example.com 	| foobar	|	true		|
		When "user@example.com" opens the email with subject "Confirmation instructions"
		And they click the first link in the email
		Then I should see "Your account was successfully confirmed. You are now signed in."
		And I should see "Signed in as user@example.com"

	
	Scenario: Signing in via form

		Given there are the following users:
			| email				| password 	|
			| user@example.com 	| foobar	|
		And I go to the homepage
		When I follow "sign in"
		And I fill in "Email" with "user@example.com"
		And I fill in "Password" with "foobar"
		And I press "Sign in"
		Then I should see "Signed in successfully."	
