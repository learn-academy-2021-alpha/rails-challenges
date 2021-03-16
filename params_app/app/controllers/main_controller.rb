class MainController < ApplicationController
    
    def cubed
        @cubed_number= params[:number].to_i 
                @cubed_number = @cubed_number** 3           
    end

    def divisible
        @number_one = params[:number1]
        @number_two= params[:number2]
        @sentence = ''
         if @number_one.to_i % @number_two.to_i == 0
            @sentence = "#@number_one is divisible by #@number_two"
         else
            @sentence = "#@number_one is not divisible by #@number_two"
         end
    end

    def length
        @long = params[:string]
            @word = @long.length
    end

    def palindrome
        @letters = params[:book]
        @return_words = ''
            if @letters.reverse == @letters
                @return_words = "#{@letters} is a palindrome"
            else
                @return_words = "#{@letters} is not a palindrome"
            end
    end       
    
    def adlibs
        @noun = params[:noun]
        @verb = params[:verb]
        @adj = params[:adj]
        @adv = params[:adv]
        
        @showbiz = "Every morning I ask the #@noun 'the #@adj' before #@verb her food into her bowl & neither of us thinks it's #@adv but that's showbiz baby"
    end

end