Dado("que eu tenho um usuario") do |table|
  @email = table.rows_hash['login']
  @senha = table.rows_hash['senha']
  login.load
end

Quando("eu faco login") do
 login.log_in(@email, @senha)
end

Entao("eu verifico se estou logado") do
  expect(page).to have_current_path('http://automationpractice.com/index.php?controller=my-account', url: true)
  expect(my_account.myAccount.text).to eql 'MY ACCOUNT'
end