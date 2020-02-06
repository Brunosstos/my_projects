Dado("que acesso o site Automation Practice") do
  home_page.load
end

Quando("faço login utilizando os seguintes dados:") do |table|
  d_user = table.rows_hash
  faz_login.login_sucesso(d_user)
end

Então("verifico se estou logado com sucesso:") do |messagem|
  vall_txt = find("span", text: "Bruno Tester")
  expect(vall_txt.text).to eql messagem
end
