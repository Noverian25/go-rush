class AddFieldsToDrivers < ActiveRecord::Migration[5.2]
  def change
  	add_column :drivers, :longitude, :decimal
    add_column :drivers, :latitude, :decimal
    add_column :drivers, :phone_number, :string
    add_column :drivers, :license_number, :string 
    add_column :drivers, :name, :string
  end
end
