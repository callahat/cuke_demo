Given(/^an unregistered user$/) do
  @username = 'JoeSwanson'
  @password = 'testing123'
  @browser.goto "http://newtours.demoaut.com/"
end

When(/^the user visits the registration page$/) do
  @browser.link(:text => 'REGISTER').click
end

And(/^applies for an account using (.*)$/) do |information|
  unless information == 'insufficient information'
    @browser.text_field(:name => 'firstName').set 'Joe'
    @browser.text_field(:name => 'lastName').set 'Swanson'
    @browser.text_field(:name => 'email').set @username
    @browser.text_field(:name => 'password').set @password
    @browser.text_field(:name => 'confirmPassword').set @password
  end

  @browser.input(:name => 'register').click
end

Then(/^the users account is created$/) do
  assert_match /Dear Joe Swanson, Thank you for registering/m, @browser.text.gsub(/\n/,' ')
  assert_match /create_account_success\.php/, @browser.url
end

Then(/^the users account is not created$/) do
  refute_match /Thank you for registering/m, @browser.text
  refute_match /create_account_success\.php/, @browser.url
end

And(/^the application asks for the missing information$/) do
  pending
end