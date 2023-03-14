class Admin::CustomersController < ApplicationController
  
  def index
    @customers = Customer.latest
  end

  def show; end

  def update
    @customer.update(customer_params)
    redirect_to request.referer, notice: 'Successfully updated customer status'
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:status)
  end
end
