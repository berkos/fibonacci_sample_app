class FibonacciController < ApplicationController

  def new
  end

  def create
    if numeric?(params[:number])
      FibonacciProducer.call(params[:number].to_i)
      redirect_to fibonacci_index_path
    else
      redirect_to new_fibonacci_path
    end
  end

  def index
    @results = FbResult.all
  end

  private

  def numeric?(num)
    Float(num) != nil rescue false
  end
end
