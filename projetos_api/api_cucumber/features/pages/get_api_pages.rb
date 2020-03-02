class GetContato
  def consulta_contato
    HTTParty.get("https://api-de-tarefas.herokuapp.com/contacts/#{$id}")
  end
end
