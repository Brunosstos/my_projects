#language: pt

Funcionalidade: Fazer login no site Automation Practice
    Sendo um usuário
    Posso acessar um site
    Para fazer alguma coisa

    Cenário: Fazer login com sucesso
        Dado que acesso o site Automation Practice
        Quando faço login utilizando os seguintes dados:
            | Email    | souza.sstos@gmail.com |
            | Password | 123456789             |
        Então verifico se estou logado com sucesso:
        """
        Bruno Tester
        """