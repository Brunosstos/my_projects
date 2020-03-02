Quando("realizar uma requisão") do
  @ret =  @postContato.cadastro_contato  
end
  
Então("o retorno da requisão deve ser {int}") do |code|
  expect(@ret.code).to eql code 
end
  
Então("o nome e email devem ser validados") do
  expect(@ret.parsed_response["data"]["attributes"]["name"]).to eql $nome
  expect(@ret.parsed_response["data"]["attributes"]["email"]).to eql $email
  $id = @ret.parsed_response["data"]["id"]
  # Imprimindo resultados na tela
  puts "Id    =>  #{@ret.parsed_response["data"]["id"]}"
  puts "Nome  =>  #{$nome}"
  puts "Email =>  #{$email}"
end

