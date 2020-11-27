class ChangeCatToAccounts < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def up
    add_column :accounts, :cat, :boolean
    change_column_default :accounts, :cat, false
  end

  def change
    Account.in_batches.update_all cat: false
  end

  def down
    remove_column :accounts, :cat
  end
end
