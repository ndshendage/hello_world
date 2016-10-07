class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customers = Customer.all
    respond_with(@customers)
  end

  def show
    respond_with(@customer)
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    @customers = Customer.all
    #respond_with(@customers) 
    #respond_with(@customer)
  end

  def update
    @customers = Customer.all
    @cus = @customer.update_attributes(customer_params)
    
    p "#{@cus.inspect}"
    p "#{@customers.inspect}"
  end

  def destroy
    @customer.destroy
    @customers = Customer.all
    #respond_with(@customer)
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :address, :gender, :age)
    end
end
