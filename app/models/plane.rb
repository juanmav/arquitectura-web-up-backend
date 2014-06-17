class Plane < ActiveRecord::Base
    has_many :transport
    has_many :flights, through: :transport
end
