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
    @square = @number ** 2
  end
end
