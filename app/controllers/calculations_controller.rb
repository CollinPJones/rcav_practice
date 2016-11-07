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

  def payment
    @interest_rate = params[:interest_rate].to_f/100
    @number_of_years = params[:number_of_years].to_i
    @principal_value = params[:principal_value].to_f
    months = 12*@number_of_years
    apr = @interest_rate/100 #APR as a decimal
    monthly_interest = apr/12
    pv_annuity = ((1-((1+monthly_interest)**(-1*months)))/monthly_interest) #Annuity Factor
    @interest_rate = @interest_rate.round(2)
    unformatted_payment = (@principal_value/pv_annuity).round(2).to_s
    pmnt_ary = unformatted_payment.split(".")
    if pmnt_ary[1].length == 1
      @payment = unformatted_payment + "0"
    else
      @payment = unformatted_payment
    end
  end
end
