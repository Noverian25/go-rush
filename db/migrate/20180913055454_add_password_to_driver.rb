class AddPasswordToDriver < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :password, :string
  end
end
