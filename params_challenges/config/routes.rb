Rails.application.routes.draw do
  get '/cubed/:number' => 'main#cubed'

  get '/evenly_divisible/:num1/:num2' => 'main#evenly_divisible'

  get '/string_length/:str' => 'main#string_length'

  get '/palindrome/:string2' => 'main#palindrome'

  get '/story/:noun/:verb/:adj/:adv' => 'main#story'
end
