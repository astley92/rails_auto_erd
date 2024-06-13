class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :business_name
      t.string :address
      t.timestamps
    end

    add_reference :users, :account, foreign_key: true
  end
end
