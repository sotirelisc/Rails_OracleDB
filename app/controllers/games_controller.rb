class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
    @teams = Team.all
  end

  def show
    @teams = Team.all
  end

  def new
    @game = Game.new
    @team = Team.all
  end

  def edit
    @team = Team.all
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  def update
    if @game.update(game_params)
       redirect_to @game, notice: 'Game was successfully updated.'
    else
     render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_url, notice: 'Game was successfully destroyed.'
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:date, :time, :stadium, :attendees, :home_team, :away_team, :round, :home_team_score, :away_team_score, :ht_q1, :ht_q2, :ht_q3, :ht_q4, :at_q1, :at_q2, :at_q3, :at_q4, :referee)
    end
end
