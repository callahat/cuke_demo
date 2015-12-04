Given(/^an unregistered user$/) do
  @username = 'JoeSwanson'
  @password = 'testing123'

  visit IndexPage
end

When(/^the user visits the registration page$/) do
  @current_page.registration
  on RegistrationPage
end

And(/^applies for an account using (.*)$/) do |information|
  unless information == 'insufficient information'
    @current_page.first_name = 'Joe'
    @current_page.last_name = 'Swanson'
    @current_page.username = @username
    @current_page.password = @password
    @current_page.confirm_password = @password
  end

  @current_page.register
end

Then(/^the users account is created$/) do
  assert_match /Dear Joe Swanson, Thank you for registering/m, @current_page.text.gsub(/\n/,' ')
  assert_match /create_account_success\.php/, @current_page.current_url
end

Then(/^the users account is not created$/) do
  refute_match /Thank you for registering/m, @current_page.text
  refute_match /create_account_success\.php/, @current_page.current_url
end

And(/^the application asks for the missing information$/) do
  pending
end