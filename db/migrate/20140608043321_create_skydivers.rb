class CreateSkydivers < ActiveRecord::Migration
  def change
    create_table :skydivers do |t|
      t.string :name
      t.string :last
      t.string :picture

      t.timestamps
    end
  end
end
