class AddRelationships < ActiveRecord::Migration
  def change
    create_table :flights_skydivers, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :skydiver
    end
    create_table :flights_planes, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :plane
    end
    create_table :flights_pilots, id: false do |t|
        t.belongs_to :flight
        t.belongs_to :pilot
    end
  end
end
