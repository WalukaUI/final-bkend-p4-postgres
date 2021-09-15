class UsersController < ApplicationController
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { in: 3..20 }
    validates :password, length: { in: 6..20 }
end
