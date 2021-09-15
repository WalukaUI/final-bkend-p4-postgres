class User < ApplicationRecord

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :username, length: { in: 3..20 }
    validates :password, length: { in: 6..20 }
end
