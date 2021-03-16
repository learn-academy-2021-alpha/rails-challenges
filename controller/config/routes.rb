Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#hello'
  get '/hello' => 'main#hello'
  get '/question' => 'main#question'
  get '/answer' => 'main#answer'
end
