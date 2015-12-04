class RegistrationPage
  include PageObject
  include NavigationBar

  page_url 'http://newtours.demoaut.com/mercuryregister.php'

  text_field :first_name,       :name => 'firstName'
  text_field :last_name,        :name => 'lastName'

  text_field :username,         :name => 'email'
  text_field :password,         :name => 'password'
  text_field :confirm_password, :name => 'confirmPassword'


  element    :register, :input, :name => 'register'

  alias_method :old_register, :register

  def register
    register_element.click
  end
end