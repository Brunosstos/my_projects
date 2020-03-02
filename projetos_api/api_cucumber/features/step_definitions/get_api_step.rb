Quando("realizar uma requisão passando o ID do Contato") do
  @ret = @getContato.consulta_contato
end

Então("API irá retornar os dados do Contato") do
  expect(@ret.parsed_response["data"]["attributes"]["name"]).to eql $nome
  expect(@ret.parsed_response["data"]["attributes"]["email"]).to eql $email2
  # Imprimindo resultados na tela
  puts "Id            => #{@ret.parsed_response["data"]["id"]}"
  puts "Nome          => #{@ret.parsed_response["data"]["attributes"]["name"]}"
  puts "Sobrenome     => #{@ret.parsed_response["data"]["attributes"]["last-name"]}"
  puts "Email         => #{@ret.parsed_response["data"]["attributes"]["email"]}"
  puts "Idade         => #{@ret.parsed_response["data"]["attributes"]["age"]}"
  puts "Telefone      => #{@ret.parsed_response["data"]["attributes"]["phone"]}"
  puts "Endereço      => #{@ret.parsed_response["data"]["attributes"]["address"]}"
  puts "Estado        => #{@ret.parsed_response["data"]["attributes"]["state"]}"
  puts "Cidade        => #{@ret.parsed_response["data"]["attributes"]["city"]}"
end
