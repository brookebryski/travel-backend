class Trip < ApplicationRecord
    has_many :trip_histories, dependent: :destroy
    has_many :users, through: :trip_histories
end
