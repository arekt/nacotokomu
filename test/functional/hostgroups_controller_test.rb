require 'test_helper'

class HostgroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostgroup" do
    assert_difference('Hostgroup.count') do
      post :create, :hostgroup => { }
    end

    assert_redirected_to hostgroup_path(assigns(:hostgroup))
  end

  test "should show hostgroup" do
    get :show, :id => hostgroups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hostgroups(:one).to_param
    assert_response :success
  end

  test "should update hostgroup" do
    put :update, :id => hostgroups(:one).to_param, :hostgroup => { }
    assert_redirected_to hostgroup_path(assigns(:hostgroup))
  end

  test "should destroy hostgroup" do
    assert_difference('Hostgroup.count', -1) do
      delete :destroy, :id => hostgroups(:one).to_param
    end

    assert_redirected_to hostgroups_path
  end
end
