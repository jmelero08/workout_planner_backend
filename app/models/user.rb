class User < ApplicationRecord
    has_secure_password

    has_many :workout_plans, dependent: :destroy 

    validates :email, uniqueness: {case_sensitive: false}
end
