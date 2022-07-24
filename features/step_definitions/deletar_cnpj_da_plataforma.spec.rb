Dado('eu tenha acessado um CNPJ') do
    @ListarPage.access_cnpj(2)
end

Quando('eu optar por deletar o CNPJ do cadastro') do
    @EditarPage.click_delete
    @EditarPage.click_delete_category_delete
end

Então('eu devo ser redirecionado para a página inicial da plataforma') do
    expect(page).to have_css("app-listar-cliente > h1")
    expect(page).to have_text("Clientes")
end