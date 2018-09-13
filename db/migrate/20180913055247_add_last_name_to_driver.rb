class AddLastNameToDriver < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :last_name, :string
  end
end
