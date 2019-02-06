# language: pt

Funcionalidade: Registro de Usuário

@now
Cenario: Fazer Registro de usuário com sucesso
    Dado que acesso a página de registro de usuário
    E insiro um email
    Quando preencho o formulário de cadastro com os dados do usuário
    Então vejo a mensagem 'Welcome to your account'
