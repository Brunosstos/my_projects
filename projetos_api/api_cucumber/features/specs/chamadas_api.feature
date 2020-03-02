#language: pt
    @Contatos
    Funcionalidade: Realizando requisões API Contato
    Como usuário do sistema
    Quero realizar várias requisões com diferentes metodos
    Para criar, obter, incluir e deletar informações


        Cenario: Cadastrar um Usuário
        Quando realizar uma requisão
        Então o retorno da requisão deve ser 201
        E o nome e email devem ser validados

        Cenario: Alterando um Usuário
        Quando realizar uma requisão Alterando o Contato
        Então o retorno da requisão deve ser 200
        E API irá retornar os dados alterado do Contato

        Cenario: Consultar um Usuário
        Quando realizar uma requisão passando o ID do Contato
        Então o retorno da requisão deve ser 200
        E API irá retornar os dados do Contato

        Cenario: Deletar um Usuário
        Quando realizar uma requisão deletando o Contato
        Então o retorno da requisão deve ser 204
