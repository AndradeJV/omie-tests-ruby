#language: pt

@exec
@change_status
Funcionalidade: Editar status de um cliente específico

    Contexto: Alterar status do cliente
        Dado que eu tenha acessado a plataforma com sucesso
        Quando eu acesar um CNPJ específico
    
    Cenário: Mudar status para desativado    
        E editar o status desse CNPJ para desativado
        Então eu devo ver o status alterado para desativado

    Cenário: Mudar status para ativado
        E editar o status desse CNPJ para ativado
        Então eu devo ver o status alterado ativado