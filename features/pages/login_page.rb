class LoginPage < SitePrism::Page
    include Capybara::DSL
    
    set_url '?controller=authentication&back=my-account'
    element :campo_email, '#email'
    element :campo_senha, '#passwd'
    element :botao_logar, '#SubmitLogin'

    def log_in(email, senha)
        campo_email.set email
        campo_senha.set senha
        botao_logar.click
    end
    
end