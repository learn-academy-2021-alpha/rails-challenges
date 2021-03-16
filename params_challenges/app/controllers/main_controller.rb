class MainController < ApplicationController
    def cubed
        @number = params[:number]
        @number_cubed = @number.to_i * @number.to_i * @number.to_i
    end

    def evenly_divisible
        @num1 = params[:num1]
        @num2 = params[:num2]
        @string = ''
        if @num1.to_i % @num2.to_i == 0
            @string = "#@num1 is divisible by #@num2"
        else
            @string = "#@num1 is NOT divisible by #@num2"
        end
    end

    def string_length
        @str = params[:str]
        @length = @str.length
    end

    def palindrome
        @string2 = params[:string2]
        @return_str = ''
        if @string2.reverse == @string2
            @return_str = "#@string2 is a palindrome"
        else
            @return_str = "#@string2 is NOT a palindrome"
        end
    end

    def story
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]
        #The small boy ran faster
        #The adj noun verb adv
        @silly_story = "The #@adj #@noun #@verb #@adv."
    end
end
