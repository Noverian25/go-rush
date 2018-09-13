class AddFirstNameToDriver < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :first_name, :string
  end
end
