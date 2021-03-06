class TripSerializer < ActiveModel::Serializer
  attributes :id, :location, :days_spent
  has_many :activities
  
end
