class SalaryController < ApplicationController
  def index
    @salaries=Salary.all
    @salaries.each do |f|
    @employee_payments=EmployeePayment.where(["salary_id = ?", f.id])
    end
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "index"   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @salary=Salary.new
    @salary.employee_id=params[:employee]
  end

  def create
    @salary=Salary.new
    @salary.employee_id=params[:salary][:employee_id]
    @salary.charge_for_hours=params[:salary][:charge_for_hours]
    @salary.accumulated=0
    @salary.total_hours=0
    @salary.total_extra_hours=0
    if @salary.save 
      redirect_to  salary_index_path
    else 
      render "new"  
    end
  end

  def edit
    id=params[:id]
    @salary=Salary.find(id)
  end

  def update
    id=params[:id]
    @salary=Salary.find(id)
    @salary.employee_id=params[:salary][:employee_id]
    @salary.charge_for_hours=params[:salary][:charge_for_hours]
    if @salary.save 
      redirect_to  salary_index_path
    else 
      render "edit"  
    end
  end

  def destroy
    id=params[:id]
    @salary=Salary.find(id)
    @salary.destroy
    redirect_to  salary_index_path
  end
end
