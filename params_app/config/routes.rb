Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/cubed/:number' => 'main#cubed'

  get '/divisible/:number1/:number2'=>'main#divisible'

  get '/length/:string' => 'main#length'

  get '/palindrome/:book' => 'main#palindrome'
 
  get 'adlibs/:noun/:verb/:adj/:adv' => 'main#adlibs'
end
