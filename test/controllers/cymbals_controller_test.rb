require 'test_helper'

class CymbalsControllerTest < ActionController::TestCase
  setup do
    @cymbal = cymbals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cymbals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cymbal" do
    assert_difference('Cymbal.count') do
      post :create, cymbal: { family: @cymbal.family, inches: @cymbal.inches, name: @cymbal.name, type: @cymbal.type }
    end

    assert_redirected_to cymbal_path(assigns(:cymbal))
  end

  test "should show cymbal" do
    get :show, id: @cymbal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cymbal
    assert_response :success
  end

  test "should update cymbal" do
    patch :update, id: @cymbal, cymbal: { family: @cymbal.family, inches: @cymbal.inches, name: @cymbal.name, type: @cymbal.type }
    assert_redirected_to cymbal_path(assigns(:cymbal))
  end

  test "should destroy cymbal" do
    assert_difference('Cymbal.count', -1) do
      delete :destroy, id: @cymbal
    end

    assert_redirected_to cymbals_path
  end
end
