Dado("que estou no site do Google") do
  visit "https://www.google.com.br/"
end

Quando("faço a seguinte pesquisa:") do |pesquisa|
  @ret = pesquisa.rows_hash
  fill_in "q", with: @ret["pesquisa"]
  sleep 3
  find(".gLFyf").native.send_keys(:enter)
  sleep 3
end

Então("vejo a seguinte frase:{string}") do |msg_sucesso|
  # retorno = page.all(".LC20lb")
  # expect(retorno[2].text).to include msg_sucesso

  expect(page).to have_content msg_sucesso
end
