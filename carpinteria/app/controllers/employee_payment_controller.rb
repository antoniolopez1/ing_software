class EmployeePaymentController < ApplicationController
  
  def index
    @employee_payments=EmployeePayment.all
  end

  def new
    @employee_payment=EmployeePayment.new
  end

  def create
    @employee_payment=EmployeePayment.new
    @employee_payment.salary_id=params[:employee_payment][:salary_id]
    @employee_payment.amount=params[:employee_payment][:amount]
    salary=Salary.find(@employee_payment.salary_id)
    @employee_payment.balance=salary.accumulated-@employee_payment.amount
    if @employee_payment.save 
      redirect_to  employee_payment_index_path
    else 
      render "new"  
    end

  end

  def edit
    id=params[:id]
    @employee_payment=EmployeePayment.find(id)
  end

  def update
     id=params[:id]
    @employee_payment=EmployeePayment.find(id)
    @employee_payment.salary_id=params[:employee_payment][:salary_id]
    @employee_payment.amount=params[:employee_payment][:amount]
    #debe de recuperar el dato anterior para poder volver a restar, probar cuando se hace el trigger
    #salary=Salary.find(@employee_payment.salary_id)
    #@employee_payment.balance=salary.accumulated-@employee_payment.amount
    if @employee_payment.save 
      redirect_to  employee_payment_index_path
    else 
      render "edit"  
    end
  end

  def destroy
     id=params[:id]
    @employee_payment=EmployeePayment.find(id)
    @employee_payment.destroy
    redirect_to  employee_payment_index_path
  end
end
