class Traveler <ActiveRecord::Base
    has_many :recommendations
    has_many :countries, through: :recommendations
end