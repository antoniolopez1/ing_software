class SalaryController < ApplicationController
  def index
    @salaries=Salary.all
  end

  def new
    @salary=Salary.new
  end

  def create
    @salary=Salary.new
    @salary.employee_id=params[:salary][:employee_id]
    @salary.charge_for_hours=params[:salary][:charge_for_hours]
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
