class User < ActiveRecord::Base
    has_one_attached :avatar do |attachable|
      attachable.variant :icon, resize: "50x50"
      attachable.variant :thumb, resize: "100x100"
      attachable.variant :medium, resize: "300x300", monochrome: true
    end
    has_many :posts
    has_many :comments
    has_secure_password
    validates :email, presence: true
end
