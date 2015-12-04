class NavigationBar
  include PageObject

  link :sign_on,   :text => 'SIGN-ON'
  link :sign_out,  :text => 'SIGN-OFF'
  link :register,  :text => 'REGISTER'
  link :itinerary, :text => 'ITINERARY'
  link :profile,   :text => 'PROFILE'
  link :support,   :text => 'SUPPORT'
  link :contact,   :text => 'CONTACT'
end