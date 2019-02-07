Dado("que acesso a página de registro de usuário") do
    @registerPage = RegisterPage.new
    @registerPage.load
end

E("insiro um {string}") do |email|
    fill_in('email_create', :with => email)
    click_button 'Create an account'
end

Quando("preencho o formulário de cadastro com os dados do usuário {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |gender, firstName, lastName, password, phone, address, state, postalCode|
    expect(page).to have_content('CREATE AN ACCOUNT')
    @registerPage.registerUser(gender, firstName, lastName, password, phone, address, state, postalCode)
    click_button 'Register'
end
  
Então("vejo a seguinte {string}") do |message|
    page.should have_content(message)
end
