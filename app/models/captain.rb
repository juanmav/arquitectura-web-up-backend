class Captain < ActiveRecord::Base
    belongs_to :pilot
    belongs_to :flight
end