class Employee < ApplicationRecord
    has_many :project_employees
    has_many :projects, through: :project_employees
    belongs_to :department
    belongs_to :city

    validates :name, uniqueness: true
    validates :name, presence: true 
end
