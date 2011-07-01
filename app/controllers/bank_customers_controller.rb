class BankCustomersController < ApplicationController

  # GET /BankCustomers
  # GET /BankCustomers.xml
  def index
    @customers = BankCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end
  end

  # GET /BankCustomers/new
  # GET /BankCustomers/new.xml
  def new
    @customer = BankCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  #   BankCustomers
  #   BankCustomers.xml
  def create

    @customer = BankCustomer.new(params[:bank_customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to(@customer, :notice => 'Customer was successfully created.') }
        format.xml  { render :xml => @customer, :status => :created, :location => @customer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /BankCustomers/1
  # GET /BankCustomers/1.xml
  def show
    @customer = BankCustomer.find(params[:id])
     
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET / BankCustomers/1/edit
  def edit
    @customer = BankCustomer.find(params[:id])
  end

  # PUT /BankCustomers/1
  # PUT /BankCustomers/1.xml
  def update
    @customer = BankCustomer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:bank_customer])
        format.html { redirect_to(@customer, :notice => 'Customer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /BankCustomers/1
  # DELETE /BankCustomers/1.xml
  def destroy
    @customer = BankCustomer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to(bank_customers_url) }
      format.xml  { head :ok }
    end
  end
end
