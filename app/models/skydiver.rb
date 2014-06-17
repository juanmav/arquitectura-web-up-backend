class Skydiver < ActiveRecord::Base
    has_many :passenger
    has_many :flights, through: :passenger
end
