class Hiker <ActiveRecord::Base
    has_many :hiker_trails
    has_many :trails, through: :hiker_trails
end