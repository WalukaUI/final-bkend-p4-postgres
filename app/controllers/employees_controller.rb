class EmployeesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
      employee=Employee.all
      render json: employee.to_json(except: [:created_at, :updated_at])
    end

    def show
        employee = Employee.find(params[:id])
        render json: employee.to_json(except: [:created_at, :updated_at])
      end

    def create
        employee = Employee.create(employee_params)
        render json: employee.to_json(except: [:created_at, :updated_at])
    end
     private

    def employee_params
        params.permit(:name, :branch_name)
      end

    def render_not_found
        render json: { error: "Employee is not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
