class Team < ActiveRecord::Base
  has_many :matches
  has_many :home_matches, :class_name => :match, :foreign_key => :home_team_id
  has_many :away_matches, :class_name => :match, :foreign_key => :away_team_id
  has_many :bets
end
