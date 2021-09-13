class City < ApplicationRecord
    belongs_to :Country
    has_many :employees

    validates :name, uniqueness: true
    validates :name, presence: true 
    validates :branch_name, presence: true 

end
