Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'main#hello'
  get '/hello' => 'main#hello' 
  get '/forest_gump' => 'main#forest_gump'
  get '/shrek' => 'main#shrek'
  get '/ghost_in_the_shell' => 'main#ghost_in_the_shell'
  get '/ip_man' => 'main#ip_man'
  get '/pulp_fiction' => 'main#pulp_fiction'
  get '/player_one' => 'main#player_one'
  get '/tokyo_drift' => 'main#tokyo_drift'
  get '/up' => 'main#up'
  get '/the_mummy' => 'main#the_mummy'
  get '/the_goonies' => 'main#the_goonies'

end



