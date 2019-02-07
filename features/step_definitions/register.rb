require 'pry'

Dado("que acesso a página de registro de usuário") do
   visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
end

E("insiro um {string}") do |email|
    fill_in('email_create', :with => email)
    click_button 'Create an account'
end

Quando("preencho o formulário de cadastro com os dados do usuário {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |gender, firstName, lastName, password, phone, address, state, postalCode|
    expect(page).to have_content('CREATE AN ACCOUNT')
    choose gender
    fill_in('customer_firstname', :with => firstName)
    fill_in('customer_lastname', :with => lastName)
    fill_in('passwd', :with => password)
    select '1', from: :days, visible: false, match: :first
    select 'January', from: :months, visible: false
    select '1980', from: :years, visible: false
    fill_in('address1', :with => address)
    fill_in('city', :with => 'Washington')
    select state, from: :id_state, visible: false
    fill_in('postcode', :with => postalCode)
    fill_in('phone_mobile', :with => phone)
    click_button 'Register'
end
  
Então("vejo a seguinte {string}") do |message|
    page.should have_content(message)
end
