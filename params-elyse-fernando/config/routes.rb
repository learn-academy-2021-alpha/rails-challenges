Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cubbed/:number' => 'main#cubbed'
  get '/divisable/:number1/:number2' => 'main#divisable'
  get '/stringcharacters/:string' => 'main#stringcharacters'
  get '/palindrome/:string' => 'main#palindrome'
  get '/madlib/:noun/:verb/:adjective/:adverb' => 'main#madlib'
end


