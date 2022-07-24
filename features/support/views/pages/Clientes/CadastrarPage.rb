class CadastrarPage
    include Capybara::DSL
    
    # Clicar em [ Cadastrar ]
    def click_submit
        find(".text-center > input").click
    end

    # Escrever CNPJ
    def write_cnpj(cnpj)
        find("#inscricao").send_keys cnpj
    end

    # Escrever apelido
    def write_surname(surname)
        find("#Apelido").send_keys surname
    end

    # Escrever nome
    def write_name(name)
        find("#nome").send_keys name
    end

    # Inserir foto
    def insert_photo(url_photo)
        find("#foto").send_keys url_photo
    end

    # Selecionar status
    def select_status(status)        
        find("#status").click
        find("#status").send_keys status
        find("#status").send_keys(:enter)
    end
end