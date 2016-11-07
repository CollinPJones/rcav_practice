class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number = params[:number].to_f
    @square_root = Math.sqrt(@number).round(2)
  end

  def square
    @number = params[:number].to_f
    @square = (@number ** 2).round(2)
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = rand(@min..@max)
  end
end
