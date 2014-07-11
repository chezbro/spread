class BetsController < ApplicationController
  def index
    @bets = Bet.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @bet = Bet.find(params[:id])
  end

  def new
    @bet = Bet.new
  end

  def edit
  end

  def create
    @bet = Bet.new(bet_params)
    if @bet.save
      respond_to do |format|
        format.html {redirect_to @bet, notice: "bet created successfully."}
      end
    else
      redirect_to new_bet_path, notice: "Something went awry!"
    end
  end

  def destroy

  end

  private

  def bet_params
    params.require(:bet).permit(:wager, :game_spread, :moneyline, :bet_id, :user_id, :home_team_id, :away_team_id)
  end
end
