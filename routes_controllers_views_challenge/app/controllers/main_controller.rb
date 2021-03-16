class MainController < ApplicationController
    def TopRappers
        render html: "Top 10 Rappers"
    end

    def Top10
        render 'top10.html.erb'
    end
end
