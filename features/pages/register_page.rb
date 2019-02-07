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
    fill_in(firstName, :with => _firstName)
    fill_in(lastName, :with => _lastName)
    fill_in(password, :with => _password)
    select '1', from: :days, visible: false, match: :first
    select 'January', from: :months, visible: false
    select '1980', from: :years, visible: false
    fill_in(address, :with => _address)
    fill_in(city, :with => 'Washington')
    select state, from: :id_state, visible: false
    fill_in(postCode, :with => _postCode)
    fill_in(:phone_mobile, :with => _phone)
  end
end