Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#landing_page'
  get '/landing_page' => 'main#landing_page'
  get '/aladdin' => 'main#aladdin'
  get '/goofymovie' => 'main#goofymovie'
  get '/bigherosix' => 'main#bigherosix'
  get '/monstersinc' => 'main#monstersinc'
  get '/marypoppins' => 'main#marypoppins'
  get '/frozen' => 'main#frozen'
  get '/tangled' => 'main#tangled'
  get '/beautyandthebeast' => 'main#beautyandthebeast'
  get '/moana' => 'main#moana'
  get '/littlemermaid' => 'main#littlemermaid'
end
