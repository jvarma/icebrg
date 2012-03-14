When /^I open an email with subject "([^"]*?)"$/ do |subject|
	create_visitor
	address = @visitor[:email]
  	open_email(address, :with_subject => subject)
end


Then /^I should receive one email with subject "([^"]*?)"$/ do |subject|
  create_visitor
  address = @visitor[:email]
  amount = 1
  unread_emails_for(address).select {
	  |m| m.subject =~ Regexp.new(Regexp.escape(subject)) 
	  }.size.should == parse_email_count(amount)
end


