Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/number/:number' => 'number#number'
  get '/divisible/:number/:number' => 'number#divisible'
  get '/length/:string' => 'number#length'
  get '/palindrome/:string' => 'number#palindrome'
  get '/madlibs/:noun/:verb/:adjective/:adverb' => 'number#madlibs'
end
