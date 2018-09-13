class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :users, index:true 
      t.datetime :TransactionStart
      t.datetime :TransactionEnd
      t.string :TransactionOrigin
      t.string :TransactionDestination
      t.integer :TransactionCost

      t.timestamps
    end
  end
end

 