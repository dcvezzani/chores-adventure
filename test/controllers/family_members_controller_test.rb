require 'test_helper'

class FamilyMembersControllerTest < ActionController::TestCase
  setup do
    @family_member = family_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_member" do
    assert_difference('FamilyMember.count') do
      post :create, family_member: { birthdate: @family_member.birthdate, name: @family_member.name }
    end

    assert_redirected_to family_member_path(assigns(:family_member))
  end

  test "should show family_member" do
    get :show, id: @family_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_member
    assert_response :success
  end

  test "should update family_member" do
    patch :update, id: @family_member, family_member: { birthdate: @family_member.birthdate, name: @family_member.name }
    assert_redirected_to family_member_path(assigns(:family_member))
  end

  test "should destroy family_member" do
    assert_difference('FamilyMember.count', -1) do
      delete :destroy, id: @family_member
    end

    assert_redirected_to family_members_path
  end
end
