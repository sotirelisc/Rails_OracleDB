require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { at_q1: @game.at_q1, at_q2: @game.at_q2, at_q3: @game.at_q3, at_q4: @game.at_q4, attendees: @game.attendees, away_team: @game.away_team, away_team_score: @game.away_team_score, date: @game.date, home_team: @game.home_team, home_team_score: @game.home_team_score, ht_q1: @game.ht_q1, ht_q2: @game.ht_q2, ht_q3: @game.ht_q3, ht_q4: @game.ht_q4, referee: @game.referee, round: @game.round, stadium: @game.stadium, time: @game.time }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { at_q1: @game.at_q1, at_q2: @game.at_q2, at_q3: @game.at_q3, at_q4: @game.at_q4, attendees: @game.attendees, away_team: @game.away_team, away_team_score: @game.away_team_score, date: @game.date, home_team: @game.home_team, home_team_score: @game.home_team_score, ht_q1: @game.ht_q1, ht_q2: @game.ht_q2, ht_q3: @game.ht_q3, ht_q4: @game.ht_q4, referee: @game.referee, round: @game.round, stadium: @game.stadium, time: @game.time }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
