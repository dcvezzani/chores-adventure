require 'test_helper'

class RewardsControllerTest < ActionController::TestCase
  setup do
    @reward = rewards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rewards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reward" do
    assert_difference('Reward.count') do
      post :create, reward: { description: @reward.description, title: @reward.title }
    end

    assert_redirected_to reward_path(assigns(:reward))
  end

  test "should show reward" do
    get :show, id: @reward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reward
    assert_response :success
  end

  test "should update reward" do
    patch :update, id: @reward, reward: { description: @reward.description, title: @reward.title }
    assert_redirected_to reward_path(assigns(:reward))
  end

  test "should destroy reward" do
    assert_difference('Reward.count', -1) do
      delete :destroy, id: @reward
    end

    assert_redirected_to rewards_path
  end
end
