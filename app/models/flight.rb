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

    def self.created(a_date)
        return Flight.where(created_at: to_timerange(a_date))
    end

    private

    def self.to_timerange(a_date)
      raise ArgumentError, "expected 'a_date' to be a Date" unless a_date.is_a? Date
      dts = Time.new(a_date.year, a_date.month, a_date.day, 0, 0, 0).utc
      dte = dts + (24 * 60 * 60) - 1
      return (dts...dte)
    end
end
