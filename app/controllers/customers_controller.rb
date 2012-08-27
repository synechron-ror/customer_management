class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    respond_to do |format|
      format.html 
    end
  end
  
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      redirect_to customers_path
    else
      render action: "new"
    end
  end

  def new
    @customer = Customer.new
  end

end
