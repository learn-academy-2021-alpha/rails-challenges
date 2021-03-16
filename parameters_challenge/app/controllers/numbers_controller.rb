class NumbersController < ApplicationController
  def number_cubed
    @number = params[:number]
    @numbercubed = (@number.to_i)**3
    render 'numbercubed.html.erb'
  end
  def divisible_by
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @number1.to_i % @number2.to_i == 0
      @result = ' is evenly divisible by '
    else
      @result = ' is not evenly divisible by '
    end
    render 'divisibleby.html.erb'
  end

  def letter_count
    @string = params[:string]
    @string_length = @string.length
    render 'lettercount.html.erb'
  end

  def palindrome
    @string = params[:string]
    if @string == @string.reverse
      @result = 'is a palindrome'
    else
      @result = 'is not a palindrome'
    end
    render 'palindromereader.html.erb'
  end

  def short_story
    @noun = params[:noun]
    @verb = params[:verb]
    @adjective = params[:adjective]
    @adverb = params[:adverb]
    render 'shortstory.html.erb'
  end
  end
