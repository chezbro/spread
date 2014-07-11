class AddBetsToApp < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :game_spread
      t.integer :wager
      t.integer :moneyline
    end
  end
end
