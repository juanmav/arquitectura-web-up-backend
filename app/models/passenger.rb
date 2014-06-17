class Passenger < ActiveRecord::Base
    belongs_to :skydiver
    belongs_to :flight
end
