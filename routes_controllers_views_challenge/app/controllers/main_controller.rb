class MainController < ApplicationController
    def TopRappers
        render html: "Top 10 Rappers"
        # render html: "<"
    end

    def Top10
        render 'top10.html.erb'
    end
end
