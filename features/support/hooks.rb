Before do
    # Páginas
    @CadastrarPage = CadastrarPage.new
    @EditarPage = EditarPage.new
    @ListarPage = ListarPage.new

    # Métodos
    @Commands = Commands.new

    # Configurações do navegador
    visit '/'
    page.current_window.resize_to(1440, 900)
end

After do
    print = page.save_screenshot("logs/images/screnshot.png")
end