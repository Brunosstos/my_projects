Quando("realizar uma requisão Alterando o Contato") do
  @ret = @putContato.alterando_contato
end

Então("API irá retornar os dados alterado do Contato") do
  expect(@ret.parsed_response["data"]["attributes"]["email"]).to eql $email2
  # Imprimindo resultados na tela
  puts "Email cadastrado => #{$email}"
  puts "Email alterado   => #{$email2}"
end