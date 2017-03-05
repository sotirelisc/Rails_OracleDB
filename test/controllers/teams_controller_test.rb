require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post :create, team: { address: @team.address, coach: @team.coach, name: @team.name, phone: @team.phone, player_10: @team.player_10, player_11: @team.player_11, player_12: @team.player_12, player_13: @team.player_13, player_14: @team.player_14, player_1: @team.player_1, player_2: @team.player_2, player_3: @team.player_3, player_4: @team.player_4, player_5: @team.player_5, player_6: @team.player_6, player_7: @team.player_7, player_8: @team.player_8, player_9: @team.player_9, president: @team.president, stadium: @team.stadium }
    end

    assert_redirected_to team_path(assigns(:team))
  end

  test "should show team" do
    get :show, id: @team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team
    assert_response :success
  end

  test "should update team" do
    patch :update, id: @team, team: { address: @team.address, coach: @team.coach, name: @team.name, phone: @team.phone, player_10: @team.player_10, player_11: @team.player_11, player_12: @team.player_12, player_13: @team.player_13, player_14: @team.player_14, player_1: @team.player_1, player_2: @team.player_2, player_3: @team.player_3, player_4: @team.player_4, player_5: @team.player_5, player_6: @team.player_6, player_7: @team.player_7, player_8: @team.player_8, player_9: @team.player_9, president: @team.president, stadium: @team.stadium }
    assert_redirected_to team_path(assigns(:team))
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete :destroy, id: @team
    end

    assert_redirected_to teams_path
  end
end
