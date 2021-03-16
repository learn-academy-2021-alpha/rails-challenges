class MathController < ApplicationController
  def cubed
    @number = params[:number].to_i
      @number = @number ** 3
    # render "cubed.html.erb"
  end

  def divisable
    @divnumber = params[:divnumber].to_i
    @divnumber1 = params[:divnumber1].to_i
    if @divnumber % @divnumber1 == 0
      @divnumber = "is divisable"
    else
      @divnumber = "is not divisable"
    end
  end

  def character
    @characters = params[:characters]
      @characters = @characters.length
  end

  def palindrome
    @palindromes = params[:palindromes]
    if @palindromes == @palindromes.reverse
      @palindromes = "this is a palindrome"
    else
      @palindromes = "this is not a palindrome"
    end
  end

  def story
    @noun = params[:noun]
    @verb = params[:verb]
    @adverb = params[:adverb]
    @adjective = params[:adjective]
  end
end
