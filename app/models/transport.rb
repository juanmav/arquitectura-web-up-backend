class Transport < ActiveRecord::Base
    belongs_to :plane
    belongs_to :flight
end