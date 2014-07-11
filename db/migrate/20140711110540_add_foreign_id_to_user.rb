class AddForeignIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :bet_id, :integer
  end
end
