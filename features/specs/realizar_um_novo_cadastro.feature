#language: pt


@exec
@cadastro
Funcionalidade: Realizar cadastro
    Cenário: Realizar um cadastro com sucesso
        Dado que eu tenha acessado a plataforma com sucesso
        Quando eu acessar a página de cadastro de cliente
        E preencher meus dados
        Então eu devo ser cadastrado na plataforma