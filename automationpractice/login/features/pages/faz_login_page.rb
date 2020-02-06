class FazLoginPage < SitePrism::Page
  element :login, "a.login"
  element :email, "input#email"
  element :pass, "input[name=passwd]"

  def login_sucesso(dados)
    login.click
    email.set dados["Email"]
    pass.set dados["Password"]
    click_button "Sign in"
  end
end
