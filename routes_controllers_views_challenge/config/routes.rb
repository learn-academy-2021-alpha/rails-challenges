Rails.application.routes.draw do
  get '/Top10Rappers' => 'main#TopRappers'
  get '/Top10' => 'main#Top10'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
