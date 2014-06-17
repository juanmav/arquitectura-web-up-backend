class Flight < ActiveRecord::Base
    has_many :passenger
    has_many :captain
    has_many :transport

    has_many :skydivers, through: :passenger
    has_many :pilots, through: :captain
    has_many :planes, through: :transport

    // Esto no funciona!!!!!!!
    # autosave is already enabled with accepts_nested_attributes_for
    #accepts_nested_attributes_for :skydivers
end
