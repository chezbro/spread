class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end
  def edit
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      respond_to do |format|
        format.html {redirect_to @match, notice: "Match created successfully."}
      end
    else
      redirect_to new_match_path, notice: "Something went awry!"
    end
  end

  def destroy
  end

  private
  def match_params
    params.require(:match).permit(:home_team_id,:away_team_id,:home_team_score,:away_team_score)
  end
end
