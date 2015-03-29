class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :plan
      t.string :recipient
      t.string :bsb
      t.string :acc
      t.string :amount

      t.timestamps null: false
    end
  end
end
