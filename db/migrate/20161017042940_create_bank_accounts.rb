class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.string :card_id
      t.string :password_disgest
      t.float :balance

      t.timestamps
    end
    add_index :bank_accounts, :card_id, unique: true
  end
end
