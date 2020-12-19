class UpdateCat < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_column :accounts, :cat, :boolean
    change_column_default :accounts, :cat, false
    Account.in_batches.update_all cat: false
  end

end
