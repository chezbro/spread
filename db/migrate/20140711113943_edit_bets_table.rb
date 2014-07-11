class EditBetsTable < ActiveRecord::Migration
  def change
    add_column :bets, :home_team_id, :integer
    add_column :bets, :away_team_id, :integer
    remove_column :bets, :team_id, :integer
  end
end
