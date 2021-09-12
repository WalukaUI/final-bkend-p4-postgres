class City < ApplicationRecord
    belongs_to :Country
    has_many :employees
end
