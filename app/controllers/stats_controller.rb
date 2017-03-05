class StatsController < ApplicationController
  before_action :set_stat, only: [:show, :edit, :update, :destroy]

  def index
    @stats = Stat.all
    @players = Player.all
    @games = Game.all
    @teams = Team.all
  end

  def show
    @players = Player.all
    @games = Game.all
    @teams = Team.all
  end

  def new
    @stat = Stat.new
    @games = Game.all
    @players = Player.all
  end

  def edit
    @games = Game.all
    @players = Player.all
  end

  def create
    @stat = Stat.new(stat_params)
    if @stat.save
      redirect_to @stat, notice: 'Stat was successfully created.'
    else
      render :new
    end
  end

  def update
    if @stat.update(stat_params)
     redirect_to @stat, notice: 'Stat was successfully updated.'
    else
     render :edit
    end
  end

  def destroy
    @stat.destroy
     redirect_to stats_url, notice: 'Stat was successfully destroyed.'
    end
  end

  private
    def set_stat
      @stat = Stat.find(params[:id])
    end

    def stat_params
      params.require(:stat).permit(:player_id, :game_id, :mins_played, :points, :two_p_field_goals, :three_p_field_goals, :free_throws, :rebounds_off, :rebounds_def, :rebounds_total, :assists, :steals, :turnovers, :blocks_in_favor, :blocks_against, :fouls_commited, :fouls_received, :pir, :file)
    end
end
