Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cubed/:number' => 'math#cubed'

  get '/divisable/:divnumber/:divnumber1' => 'math#divisable'

  get '/character/:characters' => 'math#character'

  get '/palindrome/:palindromes' => 'math#palindrome'

  get '/story/:noun/:verb/:adverb/:adjective/' => 'math#story'
end
