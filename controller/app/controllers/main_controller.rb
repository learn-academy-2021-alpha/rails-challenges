class MainController < ApplicationController

    def hello
        # render html: 'Hello World from Stephanie and Angelo!'
        @home = 'Hello world from Stephanie and Angelo'
    end

    def question
        @question = 'Whats brown and sticky?'
    end

    def answer
        render html: 'a stick!'
    end
end
