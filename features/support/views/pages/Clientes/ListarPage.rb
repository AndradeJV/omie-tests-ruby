class ListarPage
    include Capybara::DSL

    def access_cnpj(css)
        find("tr:nth-child(#{css}) > td.text-center > a").click
    end

    def access_cadastrar
        find("th.text-center > a").click
    end
end