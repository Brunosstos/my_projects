class HomePage < SitePrism::Page
  set_url "/"
  element :campo_pesquisa, '#search_query_top'
  element :validacao_pesquisa, '.heading-counter'
  element :produto_disponivel, '.available-now'
  element :produto, 'img[title=Blouse]'
end