class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :last
      t.string :picture

      t.timestamps
    end
  end
end
