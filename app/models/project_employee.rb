class ProjectEmployee < ApplicationRecord
    belongs_to :employees
    belongs_to :projects
end
