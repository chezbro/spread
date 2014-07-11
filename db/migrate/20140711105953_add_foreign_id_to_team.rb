class AddForeignIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :bet_id, :integer
  end
end
