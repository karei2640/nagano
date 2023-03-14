class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  
  def show
     @customer = current_customer
  end

  def unsubscribe
  end
  
  def withdraw
    @customer = current_customer
    @customer.withdrawal_status = true
    if @customer.save
      reset_session
      redirect_to root_path
    end
  end

  def edit
    @customer = current_customer
  end
  
  def update
    @customer = current_customer
    @customer.update
  end
end
