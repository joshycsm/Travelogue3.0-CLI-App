class HikerTrail <ActiveRecord::Base
    belongs_to :hiker 
    belongs_to :trail 
end