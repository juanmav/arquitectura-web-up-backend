class AddRelationships < ActiveRecord::Migration
  def change
    create_table :passengers, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :skydiver
    end
    create_table :transports, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :plane
    end
    create_table :captains, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :pilot
    end
  end
end
