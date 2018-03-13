class EmployeesController < ApplicationController
  # before_action :set_employee, only: [:show, :edit, :update, :destroy]
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by id: params[:id]
    # @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find_by id: params[:id]
  end

  def update 
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to @employee,
        notice: "Employee was successfully update"
    else
      render :index
    end  
  end
  def new
    @employee = Employee.new
  end
  def create
   em = Employee.new(employee_params)
   em.save
   redirect_to employees_path
   
  end
  
  def employee_params
    params.require(:employee).permit(:name, :email)
  end
end
