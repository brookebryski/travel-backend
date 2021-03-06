class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :place, :kind, :date, :description, :trip_id
end
 