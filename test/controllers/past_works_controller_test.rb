require 'test_helper'

class PastWorksControllerTest < ActionController::TestCase
  setup do
    @past_work = past_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:past_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create past_work" do
    assert_difference('PastWork.count') do
      post :create, past_work: { description: @past_work.description, name: @past_work.name }
    end

    assert_redirected_to past_work_path(assigns(:past_work))
  end

  test "should show past_work" do
    get :show, id: @past_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @past_work
    assert_response :success
  end

  test "should update past_work" do
    patch :update, id: @past_work, past_work: { description: @past_work.description, name: @past_work.name }
    assert_redirected_to past_work_path(assigns(:past_work))
  end

  test "should destroy past_work" do
    assert_difference('PastWork.count', -1) do
      delete :destroy, id: @past_work
    end

    assert_redirected_to past_works_path
  end
end
