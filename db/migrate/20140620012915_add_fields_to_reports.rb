class AddFieldsToReports < ActiveRecord::Migration
  def change
    add_column :reports, :name, :string
    add_column :reports, :altitude, :integer
    add_column :reports, :count, :integer
  end
end
