class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum:3, maximum:30}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :password_confirmation, presence: true, length: { minimum: 6 }
end