class PostContato
  def cadastro_contato
    $nome = Faker::Name.first_name
    $email = Faker::Internet.email

    @header = {
      'Content-Type': "application/json",
      Accept: "application/vnd.tasksmanager.v2",
    }

    @body = {
      name: $nome,
      last_name: "Santos",
      email: $email,
      age: "28",
      phone: "21984759575",
      address: "Av Georg Estman",
      state: "São Paulo",
      city: "São Paulo",
    }.to_json

    HTTParty.post("https://api-de-tarefas.herokuapp.com/contacts",
                  headers: @header, body: @body)
  end
end
