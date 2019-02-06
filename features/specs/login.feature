# language: pt

Funcionalidade: Fazer login

Eu como tester quero fazer login na plataforma.

@login
Cenario: Fazer login com sucesso.
    Dado que eu tenho um usuario
    |login|sistema|
    |senha|sistema|
    Quando eu faco login
    Entao eu verifico se estou logado