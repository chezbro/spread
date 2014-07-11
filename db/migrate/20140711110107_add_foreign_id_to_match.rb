class AddForeignIdToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :bet_id, :integer
  end
end
