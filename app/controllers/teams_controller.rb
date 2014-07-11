class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end
  def edit
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      respond_to do |format|
        format.html {redirect_to @team, notice: "team created successfully."}
      end
    else
      redirect_to new_team_path, notice: "Something went awry!"
    end
  end

  def destroy
  end

  private
  def team_params
    params.require(:team).permit(:wins, :losses, :name, :sport, :bet_id)
  end

end
