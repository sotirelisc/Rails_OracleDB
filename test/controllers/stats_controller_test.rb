require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post :create, stat: { assists: @stat.assists, blocks_against: @stat.blocks_against, blocks_in_favor: @stat.blocks_in_favor, fouls_commited: @stat.fouls_commited, fouls_received: @stat.fouls_received, free_throws: @stat.free_throws, game_id: @stat.game_id, mins_played: @stat.mins_played, pir: @stat.pir, player_id: @stat.player_id, points: @stat.points, rebounds_def: @stat.rebounds_def, rebounds_off: @stat.rebounds_off, rebounds_total: @stat.rebounds_total, steals: @stat.steals, three_p_field_goals: @stat.three_p_field_goals, turnovers: @stat.turnovers, two_p_field_goals: @stat.two_p_field_goals }
    end

    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should show stat" do
    get :show, id: @stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stat
    assert_response :success
  end

  test "should update stat" do
    patch :update, id: @stat, stat: { assists: @stat.assists, blocks_against: @stat.blocks_against, blocks_in_favor: @stat.blocks_in_favor, fouls_commited: @stat.fouls_commited, fouls_received: @stat.fouls_received, free_throws: @stat.free_throws, game_id: @stat.game_id, mins_played: @stat.mins_played, pir: @stat.pir, player_id: @stat.player_id, points: @stat.points, rebounds_def: @stat.rebounds_def, rebounds_off: @stat.rebounds_off, rebounds_total: @stat.rebounds_total, steals: @stat.steals, three_p_field_goals: @stat.three_p_field_goals, turnovers: @stat.turnovers, two_p_field_goals: @stat.two_p_field_goals }
    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete :destroy, id: @stat
    end

    assert_redirected_to stats_path
  end
end
