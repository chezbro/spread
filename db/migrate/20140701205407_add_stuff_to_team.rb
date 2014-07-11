class AddStuffToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :name, :string
    add_column :teams, :sport, :string
  end
end
