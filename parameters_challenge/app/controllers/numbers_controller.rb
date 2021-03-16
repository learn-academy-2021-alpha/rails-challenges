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
end
