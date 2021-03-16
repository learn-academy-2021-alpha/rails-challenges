class NumberController < ApplicationController
  def number
    @number = params[:number]
  end
  def divisible
    @number = params[:number]
    @number = params[:number]
    if @number % @number == 0
      true
    else 
      puts 'not true'
    end
  end
  def length 
    @string = params[:string]
  end
  def palindrome
    @string = params[:string]
    if @string == @string.reverse
      @string = 'is'
    else
      @string = 'is not'
    end
  end
  def madlibs
    @noun = params[:noun]
    @verb = params[:verb]
    @adjective = params[:adjective]
    @adverb = params[:adverb]
  end
end
