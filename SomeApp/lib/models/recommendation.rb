class Recommendation <ActiveRecord::Base
    belongs_to :traveler
    belongs_to :country
end