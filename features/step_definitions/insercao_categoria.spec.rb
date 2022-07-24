Quando('eu acessar um cliente específico') do
    @ListarPage.access_cnpj(2)
end

Quando('inserir uma categoria') do
    @yaml_load = YAML.load(File.open("features/fixtures/insercao_categoria.yml"))
    @data = @yaml_load['inserirCategoria']


    @EditarPage.click_novo
    @EditarPage.write_name_category(@data['nome'])
    @EditarPage.write_email_category(Faker::Internet.email)
    @EditarPage.select_category(@data['categoria'])
    @EditarPage.click_button_cadastrar_category
end

Então('eu devo ver essa nova categoria para o cliente') do
    expect(page).to have_text(@data['categoria'])
    expect(page).to have_css('td.text-center')
end
  