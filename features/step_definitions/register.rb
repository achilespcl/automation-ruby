require 'pry'

Dado("que acesso a página de registro de usuário") do
   visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
end

E("insiro um email") do
    fill_in('email_create', :with => 'kara4757@gmail.com')
    click_button 'Create an account'
end

Quando("preencho o formulário de cadastro com os dados do usuário") do
    expect(page).to have_content('CREATE AN ACCOUNT')
    choose 'Mr.'
    fill_in('customer_firstname', :with => 'Barrabás')
    fill_in('customer_lastname', :with => 'Barrabás')
    fill_in('passwd', :with => '12345')
    select '1', from: :days, visible: false, match: :first
    select 'January', from: :months, visible: false
    select '1980', from: :years, visible: false
    fill_in('address1', :with => 'Rua dos 3 Poderes')
    fill_in('city', :with => 'Washington')
    select 'Alabama', from: :id_state, visible: false
    fill_in('postcode', :with => '00000')
    fill_in('phone_mobile', :with => '123456798')
    click_button 'Register'
end
  
Então("vejo a mensagem {string}") do |message|
    page.should have_content(message)
end
  
  