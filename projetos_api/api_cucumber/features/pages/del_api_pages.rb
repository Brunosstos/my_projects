class DelContato
  def deletando_contato
    HTTParty.delete("https://api-de-tarefas.herokuapp.com/contacts/#{$id}")
  end
end
