Dado("que eu acesse a plataforma do ecommerce") do
  home_page.load
  expect(page.current_url).to eql CONFIG["url_default"]
end

Dado("que eu pesquise o produto: {string}") do |pesquisa|
  home_page.campo_pesquisa.set pesquisa
  home_page.campo_pesquisa.send_keys(:enter)
  expect(home_page.validacao_pesquisa).to have_content "1 result has been found."
  expect(home_page.produto_disponivel).to have_content "In stock"
  sleep 2
end

Quando("eu clicar em adicionar ao carrinho: {string}") do |cart|
  ret = find('img[title=Blouse]')
  ret.hover
  click_link cart
  expect(page).to have_content "Product successfully added to your shopping cart"
  click_link_or_button 'Proceed to checkout'
  sleep 2
end

Então("deverá ser apresentado a pagina de para checkout") do
  expect(page).to have_content "Total"
  expect(page).to have_content "Proceed to checkout"
  expect(page).to have_content "Sign in"
end
