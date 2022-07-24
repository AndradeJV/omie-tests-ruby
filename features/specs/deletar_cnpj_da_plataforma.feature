#language: pt

@exec
@delecao
Funcionalidade: Deletar de cadastro da plataforma
    Cenário: Deletar um CNPJ da plataforma
        Dado que eu tenha acessado a plataforma com sucesso
        E eu tenha acessado um CNPJ
        Quando eu optar por deletar o CNPJ do cadastro
        Então eu devo ser redirecionado para a página inicial da plataforma