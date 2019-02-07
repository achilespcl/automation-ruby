# language: pt

Funcionalidade: Fazer login

@login
Cenario: Fazer login com sucesso.
    Dado que eu tenho um usuario
    |login|petter2707@gmail.com|
    |senha|12345               |
    Quando eu faco login
    Entao eu verifico se estou logado