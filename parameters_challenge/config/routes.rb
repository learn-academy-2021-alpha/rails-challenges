Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/number_cubed/:number'=>'numbers#number_cubed'
  get '/divisible_by/:number1/:number2'=>'numbers#divisible_by'
end
