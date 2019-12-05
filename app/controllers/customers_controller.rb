class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render json: @customers
  end

  def show

  end

  def new


  end

  def create

  end

  def edit

  end
  
  def update


  end

  def destroy

  end


end
