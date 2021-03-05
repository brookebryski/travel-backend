class Activity < ApplicationRecord
    belongs_to :trip
    validates :place, presence: true
    validates_inclusion_of :kind, :in => ['cuisine', 'sight']
end
