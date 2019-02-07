# language: pt

Funcionalidade: Registro de Usuário

Esquema do Cenario: Fazer Registro de usuário
    Dado que acesso a página de registro de usuário
    E insiro um <email>
    Quando preencho o formulário de cadastro com os dados do usuário <gender>, <firstName>, <lastName>, <password>, <phone>, <address>, <state>, <postalCode>
    Então vejo a seguinte <mensagem>

    Exemplos:
    | email               |  gender | firstName | lastName | password |    phone    |   address   |   state   | postalCode |         mensagem                               |
    | 'kra2234@gmail.com' | 'Mr.'   | 'Claudio' | 'Ohano'  | '123456' | '123456789' | '14 street' | 'Alabama' | '00000'    | 'Welcome'                                      |
    | 'kra2123@gmail.com' | 'Mr.'   | ''        | 'Ohano'  | '123456' | '123456789' | '14 street' | 'Alabama' | '00000'    | 'firstname is required'                        |
    | 'kra2345@gmail.com' | 'Mrs.'  | 'Claudia' | ''       | '123456' | '123456789' | '14 street' | 'Alabama' | '00000'    | 'lastname is required'                         |
    | 'kra2345@gmail.com' | 'Mrs.'  | 'Claudia' | 'Ohana'  | ''       | '123456789' | '14 street' | 'Alabama' | '00000'    | 'passwd is required'                          |
    | 'kra2456@gmail.com' | 'Mrs.'  | 'Claudia' | 'Ohana'  | '123456' | ''          | '14 street' | 'Alabama' | '00000'    | 'You must register at least one phone number'  |
    | 'kra2567@gmail.com' | 'Mrs.'  | 'Claudia' | 'Ohana'  | '123456' | '123456789' | ''          | 'Alabama' | '00000'    | 'address1 is required'                         |
    | 'kra2789@gmail.com' | 'Mrs.'  | 'Claudia' | 'Ohana'  | '123456' | '123456789' | '14 street' | '-'       | '00000'    | 'This country requires you to choose a State'  |
    | 'kra2901@gmail.com' | 'Mrs.'  | 'Claudia' | 'Ohana'  | '123456' | '123456789' | '14 street' | 'Alabama' | ''         | "The Zip/Postal code you've entered is invalid"|