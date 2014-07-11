class AddForeignIDsToBet < ActiveRecord::Migration
  def change
    add_column :bets, :team_id, :integer
    add_column :bets, :match_id, :integer
    add_column :bets, :user_id, :integer
  end
end
