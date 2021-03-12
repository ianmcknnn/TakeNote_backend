class User < ApplicationRecord
    has_many :journals
    has_many :pages, through: :journals

    has_secure_password
end
