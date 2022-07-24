#language: pt


@exec
@insercao_categoria
Funcionalidade: Edição e inserção de dados do cliente
    Cenário: Inserir uma categoria de cadastro do cliente
        Dado que eu tenha acessado a plataforma com sucesso
        Quando eu acessar um cliente específico
        E inserir uma categoria
        Então eu devo ver essa nova categoria para o cliente