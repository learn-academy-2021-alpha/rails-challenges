class MainController < ApplicationController
    def hello
        render "index.html.erb"
    end
    def question
        render html: 'Knock! Knock! Who’s there?'
    end
    def answer
        render html: 'Candice. Candice who? Candice door open, or am I stuck out here?'
    end
    def the_wire
        # render html: 'The Wire is a great show'
        render inline: 'The Wire is a great show <br><br><%= link_to "Home", "/" %>'
    end
    def breaking_bad
        render inline: 'Breaking Bad is a great show <br><br><%= link_to "Home", "/" %>'
    end
    def parks_and_rec
        render html: 'Parks and Rec'
    end
    def good_place
        render html: 'Good Place'
    end
    def kobra_kai
        render html: 'Kobra Kai'
    end
    def shameless
        render html: 'Shameless'
    end
    def below_deck
        render html: 'Below Deck'
    end
    def ru_pauls_drag_race
        render html: 'Ru Pauls Drag Race'
    end
    def the_deuce
        render html: 'The Deuce'
    end
    def peaky_blinders
        render html: 'Peaky Blinders'
    end
end


