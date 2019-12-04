class Country <ActiveRecord::Base
    has_many :recommendations
    has_many :travelers, through: :recommendations
end