require 'test_helper'

class KudosControllerTest < ActionController::TestCase
  setup do
    @kudo = kudos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kudos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kudo" do
    assert_difference('Kudo.count') do
      post :create, kudo: { description: @kudo.description, picture: @kudo.picture, recipient_id: @kudo.recipient_id, title: @kudo.title }
    end

    assert_redirected_to kudo_path(assigns(:kudo))
  end

  test "should show kudo" do
    get :show, id: @kudo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kudo
    assert_response :success
  end

  test "should update kudo" do
    patch :update, id: @kudo, kudo: { description: @kudo.description, picture: @kudo.picture, recipient_id: @kudo.recipient_id, title: @kudo.title }
    assert_redirected_to kudo_path(assigns(:kudo))
  end

  test "should destroy kudo" do
    assert_difference('Kudo.count', -1) do
      delete :destroy, id: @kudo
    end

    assert_redirected_to kudos_path
  end
end
