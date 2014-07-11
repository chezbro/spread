class AddOddsToApp < ActiveRecord::Migration
  def change
    create_table :odds do |t|
      t.integer :moneyline
      t.integer :game_spread
    end
  end
end
