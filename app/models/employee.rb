class Employee < ApplicationRecord
    belongs_to :department
    belongs_to :city
    has_many :projects, through: :project_employees
end
