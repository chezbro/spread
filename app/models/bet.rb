class Bet < ActiveRecord::Base
  belongs_to :match
  belongs_to :team
  belongs_to :home_team, :class_name => :team
  belongs_to :away_team, :class_name => :team
  belongs_to :user

end
