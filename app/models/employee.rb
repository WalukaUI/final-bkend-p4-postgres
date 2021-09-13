class Employee < ApplicationRecord
    has_many :project_employees
    has_many :projects, through: :project_employees
    belongs_to :department
    belongs_to :city
end
