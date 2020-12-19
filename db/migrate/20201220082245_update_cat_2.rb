
class UpdateCat2 < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!
class Post < ActiveRecord::Base 
    validates :cat, presence: true ,allow_nil: true 
end


def change
    change_column_default :accounts, :cat, false
    Account.in_batches.update_all cat: false
  end
end
