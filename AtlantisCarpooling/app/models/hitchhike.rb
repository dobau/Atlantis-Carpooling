class Hitchhike < ActiveRecord::Base
    belongs_to :user
    belongs_to :ride
end
