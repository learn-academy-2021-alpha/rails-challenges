Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/'=>'top_ten#Title'

  get '/Web_Dev'=>'top_ten#Web_Dev'

  get '/Hiking'=>'top_ten#Hiking'

  get '/Photography'=>'top_ten#Photography'

  get '/Sports'=>'top_ten#Sports'

  get '/Music'=>'top_ten#Music'

  get '/Sailing'=>'top_ten#Sailing'

  get '/Camping'=>'top_ten#Camping'

  get '/Dancing'=>'top_ten#Dancing'

  get '/Drone_Flying'=>'top_ten#Drone_Flying'

  get '/Drinking'=>'top_ten#Drinking'
end
