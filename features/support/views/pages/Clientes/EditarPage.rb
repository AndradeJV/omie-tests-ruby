class EditarPage
    include Capybara::DSL

    # Clicar em [ Novo ]
    def click_novo
        find("th.text-center > a").click
    end

    # Clicar em [ Deletar ]
    def click_delete
        find(".text-center button.btn.btn-danger").click
    end

    # Clicar em [ Excluir ] no modal de exclusão
    def click_delete_category_delete
        find(".custom-modal-footer .btn.btn-danger").click
    end

    # Clicar em [ Cadastrar ] no modal de categoria
    def click_button_cadastrar_category
        find(".custom-modal-footer  input").click
    end

    # Mudar status
    def change_status(status)
        find("#status").click
        find("#status").send_keys status
        find("#status").send_keys(:enter)

        # select(status, from: '#status')
    end

    # Escrever nome no modal de categoria
    def write_name_category(name)
        find(".custom-modal #nome").send_keys name
    end

    # Escrever email no modal de categoria
    def write_email_category(email)
        find(".custom-modal #email").send_keys email
    end

    # Selecionar status no modal de categoria
    def select_category(status)
        find(".custom-modal #categoria").click
        find(".custom-modal #categoria").send_keys status
        find(".custom-modal #categoria").send_keys(:enter)
    end
end