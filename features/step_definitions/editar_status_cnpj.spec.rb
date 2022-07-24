#--------------------------------- Contexto ---------------------------------#

Dado('que eu tenha acessado a plataforma com sucesso') do
    expect(page).to have_css("app-listar-cliente > h1")
    expect(page).to have_text("Clientes")
end

Quando('eu acesar um CNPJ específico') do
    @ListarPage.access_cnpj(2)
end

#--------------------------------- Status desativado ---------------------------------#

Quando('editar o status desse CNPJ para desativado') do
    @yaml_load = YAML.load(File.open("features/fixtures/editar_status_cnpj.yml"))
    @data = @yaml_load['statusDesativado']


    @EditarPage.change_status(@data['status'])

    click_button 'Editar'
end

Então('eu devo ver o status alterado para desativado') do
    @Commands.get_text("#status", @data['status'])
end


#--------------------------------- Status ativado ---------------------------------#

Quando('editar o status desse CNPJ para ativado') do
    @yaml_load = YAML.load(File.open("features/fixtures/editar_status_cnpj.yml"))
    @data = @yaml_load['statusAtivado']


    @EditarPage.change_status(@data['status'])

    click_button 'Editar'
end
  
Então('eu devo ver o status alterado ativado') do
    @Commands.get_text("#status", @data['status'])
end