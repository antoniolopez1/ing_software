class EmployeeController < ApplicationController
  
  def index
   
    @pagy, @employees= pagy(Employee.where(["name LIKE ? OR lastname LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)
    
  end
  def show
    id=params[:id]
    @employee=Employee.find(id)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee= Employee.new
    @employee.name=params[:employee][:name]
    @employee.lastname= params[:employee][:lastname]
    @employee.address= params[:employee][:address]
    @employee.telephone= params[:employee][:telephone]
    @employee.document= params[:employee][:document]
    @employee.speciality= params[:employee][:speciality]
    @employee.status= params[:employee][:status]
    
    if @employee.save 
      redirect_to salary_new_eid_path(@employee['id'])
    else 
      render "new"  
    end
  end

  def edit
    id=params[:id]
    @employee= Employee.find(id)
  end

  def update
    id=params[:id]
    @employee= Employee.find(id)
    @employee.name=params[:employee][:name]
    @employee.lastname= params[:employee][:lastname]
    @employee.address= params[:employee][:address]
    @employee.telephone= params[:employee][:telephone]
    @employee.document= params[:employee][:document]
    @employee.speciality= params[:employee][:speciality]
    @employee.status= params[:employee][:status]
    if @employee.save 
      redirect_to  employee_index_path
    else 
      render "edit"  
    end
  end

  def destroy
    id=params[:id]
    employee= Employee.find(id)
    employee.destroy
    redirect_to  employee_index_path
  end
end
