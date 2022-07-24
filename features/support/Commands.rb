class Commands
    include Capybara::DSL

    def get_text(text_css, text)
        request_text = find(text_css).text

        if request_text == text
            return 
        end
    end

    def generate_number_for_cnpj
        return random = rand(100000000000000...9999999999999999)
    end
end