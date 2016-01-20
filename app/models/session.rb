class Session < ActiveRecord::Base
        has_many :attendances
        has_many :users, :through => :attendances
        
		has_one :whiskey
end
