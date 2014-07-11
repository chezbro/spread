class Team < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :wins
      t.integer :losses
    end
  end
end
