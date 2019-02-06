class LoginPage < SitePrism::Page
    
    set_url '/'
    element :campo_email, '#email'
    element :campo_senha, '#passwd'
    element :botao_logar, '#SubmitLogin'

    def log_in(email, senha)
        campo_email.set email
        campo_senha.set senha
        botao_logar.click
    end
    
end