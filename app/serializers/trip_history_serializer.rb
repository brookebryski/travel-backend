class TripHistorySerializer < ActiveModel::Serializer
  belongs_to :user 
  belongs_to :trip
  attributes :id, :trip_id, :user_id
end
