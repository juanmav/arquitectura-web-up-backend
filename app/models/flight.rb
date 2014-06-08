class Flight < ActiveRecord::Base
    has_and_belongs_to_many :skydivers
    has_and_belongs_to_many :pilots
    has_and_belongs_to_many :planes
end
