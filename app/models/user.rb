class User < ApplicationRecord
   has_secure_password
   
    has_many :trip_histories, dependent: :destroy
    has_many :trips, through: :trip_histories
end