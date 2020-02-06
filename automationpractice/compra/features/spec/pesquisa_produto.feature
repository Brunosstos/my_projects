#language:pt
Funcionalidade: Realizar uma compra
  Como um usuário de ecommerce
  Quero acessar a plataforma
  Para realizar uma compra

  Contexto: Acessar ecommerce
    Dado que eu acesse a plataforma do ecommerce

  Cenário: Pesquisar e comprar um produto
    Dado que eu pesquise o produto: "blouse"
    Quando eu clicar em adicionar ao carrinho: "Add to cart"
    Então deverá ser apresentado a pagina de para checkout
