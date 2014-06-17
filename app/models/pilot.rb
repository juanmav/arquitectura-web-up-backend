class Pilot < ActiveRecord::Base
    has_many :captain
    has_many :flights, through: :captain
end
