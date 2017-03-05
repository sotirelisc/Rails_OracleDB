class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
    @players = Player.all
    @teams = Team.all
  end

  def show
    @players = Player.all
    @games = Game.all
    @teams = Team.all

  end

  def new
    @team = Team.new
    @player = Player.all
  end

  def edit
    @player = Player.all
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to @team, notice: 'Team was successfully created.'
    else
     render :new
    end
  end

  def update
    if @team.update(team_params)
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      render :edit
    end

  end

  def destroy
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end


  end

  private
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :president, :coach, :stadium, :address, :phone, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_11, :player_12, :player_13, :player_14)
    end
end
