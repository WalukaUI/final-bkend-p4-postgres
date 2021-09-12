class Project < ApplicationRecord
    has_many :employees, through: :project_employees
end
