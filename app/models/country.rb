class Country < ApplicationRecord
    has_many :cities

    validates :name, uniqueness: true
    validates :name, presence: true 
    validates :branch_name, presence: true
end
