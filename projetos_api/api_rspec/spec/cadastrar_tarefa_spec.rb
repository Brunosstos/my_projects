describe "Cadastrar" do
  def Login(field_email, field_password)
    @body = {
      session: {
        email: field_email,
        password: field_password,
      },
    }.to_json

    @login = Login.post('/sessions', body: @body)
    puts @login.body
  end

  context "tarefas" do
    before { Login('brunobatista66@gmail.com', '123456') }

    it "com sucesso" do
      @header = {
        'Content-Type': 'application/json',
        Accept: 'application/vnd.tasksmanager.v2',
        Authorization: @login.parsed_response['data']['attributes']['auth-token']
      }

      @body = {
        task: {
          title: 'Cadastrando service',
          description: 'Teste API com Bruno Batista',
          deadLine: '2020-02-11 21:50:00',
          done: true,
        },

      }.to_json

      @tarefa = Cadastrar.post('/tasks', body: @body, headers: @header)
      puts @tarefa
    end
  end
end
