class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :domain
      t.string :picture

      t.timestamps
    end
  end
end
