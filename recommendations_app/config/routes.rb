Rails.application.routes.draw do
 root to: 'main#hello'
 get '/question' => 'main#question'
 get '/answer' => 'main#answer'
 get '/the_wire' => 'main#the_wire'
 get '/breaking_bad' => 'main#breaking_bad'
 get '/parks_and_rec' => 'main#parks_and_rec'
 get '/good_place' => 'main#good_place'
 get '/kobra_kai' => 'main#kobra_kai'
 get '/shameless' => 'main#shameless'
 get '/below_deck' => 'main#below_deck'
 get '/ru_pauls_drag_race' => 'main#ru_pauls_drag_race'
 get '/the_deuce' => 'main#the_deuce'
 get '/peaky_blinders' => 'main#peaky_blinders'
end


