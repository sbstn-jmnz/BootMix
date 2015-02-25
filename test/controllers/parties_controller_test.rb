require 'test_helper'

class PartiesControllerTest < ActionController::TestCase
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post :create, party: { description: @party.description, disco_tweet: @party.disco_tweet, dress_code: @party.dress_code, latitude: @party.latitude, longitude: @party.longitude, nameaddress: @party.nameaddress, openbar: @party.openbar, starts_at: @party.starts_at, string: @party.string }
    end

    assert_redirected_to party_path(assigns(:party))
  end

  test "should show party" do
    get :show, id: @party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @party
    assert_response :success
  end

  test "should update party" do
    patch :update, id: @party, party: { description: @party.description, disco_tweet: @party.disco_tweet, dress_code: @party.dress_code, latitude: @party.latitude, longitude: @party.longitude, nameaddress: @party.nameaddress, openbar: @party.openbar, starts_at: @party.starts_at, string: @party.string }
    assert_redirected_to party_path(assigns(:party))
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete :destroy, id: @party
    end

    assert_redirected_to parties_path
  end
end
