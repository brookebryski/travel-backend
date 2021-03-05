class Trip < ApplicationRecord
    has_many :activities
    validates :location, presence: true
end
