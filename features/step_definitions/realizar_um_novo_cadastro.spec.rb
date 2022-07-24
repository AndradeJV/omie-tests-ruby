Quando('eu acessar a página de cadastro de cliente') do
    @ListarPage.access_cadastrar

    expect(page).to have_text('Cadastrar cliente')
end

Quando('preencher meus dados') do
    @yaml_load = YAML.load(File.open("features/fixtures/realizar_um_novo_cadastro.yml"))
    @data = @yaml_load


    @CadastrarPage.write_cnpj(@Commands.generate_number_for_cnpj)
    @CadastrarPage.write_surname(Faker::Name.name)
    @CadastrarPage.write_name(Faker::Name.name)
    @CadastrarPage.insert_photo(@data['foto'])
    @CadastrarPage.select_status(@data['status'])
    @CadastrarPage.click_submit
end

Então('eu devo ser cadastrado na plataforma') do
    expect(page).to have_text('Clientes')
    expect(page).to have_css('app-listar-cliente > h1')
end
  