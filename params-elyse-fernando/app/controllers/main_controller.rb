class MainController < ApplicationController

def cubbed
    @number = params[:number].to_i
    @number = @number ** 3
end

def divisable 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @number1 % @number2 == 0
        @result_string = 'is divisable by '
    else
        @result_string = 'is not divisable by '
    end
    render "divisable.html.erb"
end

def stringcharacters 
    @string = params[:string].length
    @string
end

def palindrome 
    @string = params[:string]
    if @string == @string.reverse
        @result_string = 'is a palindrome'
    else
        @result_string = 'is not a palindrome'
    end 
    render "palindrome.html.erb"

end

def madlib
    @noun = params[:noun]
    @verb = params[:verb]
    @adjective = params[:adjective]
    @adverb = params[:adverb]
    
end
end