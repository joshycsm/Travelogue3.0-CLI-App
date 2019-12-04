class Trail <ActiveRecord::Base
    has_many :hiker_trails
    has_many :hikers, through: :hiker_trails
end