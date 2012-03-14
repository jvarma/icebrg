### UTILITY METHODS ###

def create_visitor
  @visitor ||= { :email => "user@example.com",
    :password => "foobar", :password_confirmation => "foobar" }
end

def find_user
  @user ||= User.first conditions: {:email => @visitor[:email]}
end

def create_unconfirmed_user
  create_visitor
  delete_user
  sign_up
end

def create_user
  create_visitor
  delete_user
  @user = FactoryGirl.create(:user, email: @visitor[:email])
end

def create_confirmed_user
  create_visitor
  delete_user
  @user = FactoryGirl.create(:user, email: @visitor[:email])
  @user.confirm!
end

def delete_user
  @user ||= User.first conditions: {:email => @visitor[:email]}
  @user.destroy unless @user.nil?
end

def sign_up
  delete_user
  visit new_user_registration_path
  fill_in "Email", :with => @visitor[:email]
  fill_in "Password", :with => @visitor[:password]
  fill_in "Password confirmation", :with => @visitor[:password_confirmation]
  click_button "Sign up"
  find_user
end

def sign_in
  visit new_user_session_path
  fill_in "Email", :with => @visitor[:email]
  fill_in "Password", :with => @visitor[:password]
  click_button "Sign in"
end

def sign_out
  #rack_test_session_wrapper = Capybara.current_session.driver
  #rack_test_session_wrapper.submit(:delete, '/users/sign_out', @user)
  create_visitor
  Capybara.current_session.driver.delete destroy_user_session_path(User.find_by_email(@visitor[:email]))
end
