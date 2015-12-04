class SignOnPage
  include PageObject
  include NavigationBar

  page_url 'http://newtours.demoaut.com/mercurysignon.php'

  text_field :username, :name => 'userName'
  text_field :password, :name => 'password'

  element    :sign_on, :input, :name => 'login'

  alias_method :old_sign_on, :sign_on

  def sign_on
    sign_on_element.click
  end
end