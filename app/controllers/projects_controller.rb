class ProjectsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
      project=Project.all
      render json: project.to_json(except: [:created_at, :updated_at])
    end

    def show
        project = Project.find(params[:id])
        render json: project.to_json(except: [:created_at, :updated_at])
      end

    def create
        project = Project.create(project_params)
        render json: project.to_json(except: [:created_at, :updated_at])
    end
     private

    def project_params
        params.permit(:name, :section, :role, :department_id, :city_id)
      end

    def render_not_found
        render json: { error: "Project is not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
