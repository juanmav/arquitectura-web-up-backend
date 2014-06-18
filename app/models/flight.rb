class Flight < ActiveRecord::Base

    belongs_to :status

    has_many :passenger
    has_many :captain
    has_many :transport

    has_many :skydivers, -> { uniq }, through: :passenger
    has_many :pilots, -> { uniq }, through: :captain
    has_many :planes, -> { uniq }, through: :transport

    # Esto no funciona!!!!!!!
    # autosave is already enabled with accepts_nested_attributes_for
    accepts_nested_attributes_for :skydivers
end
