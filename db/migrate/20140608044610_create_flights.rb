class CreateFlights < ActiveRecord::Migration
  def change

    create_table :statuses do |t|
        t.string :name
    end

    create_table :flights do |t|
      t.belongs_to :status
      t.integer :day_order
      t.timestamps
    end
  end
end
