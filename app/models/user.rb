class User < ApplicationRecord
    has_one_attached :avatar
    has_many :posts
    has_secure_password
    validates :email, presence: true
end
