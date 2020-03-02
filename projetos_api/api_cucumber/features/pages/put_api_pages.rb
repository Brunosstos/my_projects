class PutContato
  def alterando_contato
    $email2 = Faker::Internet.email

    @header = {
      'Content-Type': "application/json",
      Accept: "application/vnd.tasksmanager.v2",
    }

    @body = {
      name: $nome,
      last_name: "Santos",
      email: $email2,
      age: "28",
      phone: "(11)981159575",
      address: "Av Georg Estman",
      state: "São Paulo",
      city: "São Paulo",
    }.to_json

    HTTParty.put("https://api-de-tarefas.herokuapp.com/contacts/#{$id}",
                 headers: @header, body: @body)
  end
end
