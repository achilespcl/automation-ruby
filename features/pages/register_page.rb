class RegisterPage < SitePrism::Page
    include Capybara::DSL
    
    set_url '?controller=authentication&back=my-account'
    element :account_name, '//a[@class="account"]/span'
    element :myAccount, '.page-heading'
    element :firstName, '#customer_firstname'
    element :lastName, '#customer_lastname'
    element :password, '#passwd'
    element :address, '#address1'
    element :city, '#city'
    element :postCode, '#postcode'
    element :phone_mobile, '#phone_mobile'

  def registerUser(gender, _firstName, _lastName, _password, _phone, _address, state, _postCode)
    choose gender
    firstName.set _firstName
    lastName.set _lastName
    password.set _password
    select '1', from: :days, visible: false, match: :first
    select 'January', from: :months, visible: false
    select '1980', from: :years, visible: false
    address.set _address
    city.set 'Washington'
    select state, from: :id_state, visible: false
    postCode.set _postCode
    phone_mobile.set _phone
  end
end