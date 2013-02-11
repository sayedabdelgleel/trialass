require 'test_helper'

class BoatsControllerTest < ActionController::TestCase
  setup do
    @boat = boats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat" do
    assert_difference('Boat.count') do
      post :create, boat: { activated: @boat.activated, berths: @boat.berths, cabins: @boat.cabins, description: @boat.description, fuel_capacity: @boat.fuel_capacity, heads: @boat.heads, hull: @boat.hull, length_ft: @boat.length_ft, max_persons: @boat.max_persons, model_name: @boat.model_name, model_year: @boat.model_year, name: @boat.name, permalink: @boat.permalink, water_capacity: @boat.water_capacity }
    end

    assert_redirected_to boat_path(assigns(:boat))
  end

  test "should show boat" do
    get :show, id: @boat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat
    assert_response :success
  end

  test "should update boat" do
    put :update, id: @boat, boat: { activated: @boat.activated, berths: @boat.berths, cabins: @boat.cabins, description: @boat.description, fuel_capacity: @boat.fuel_capacity, heads: @boat.heads, hull: @boat.hull, length_ft: @boat.length_ft, max_persons: @boat.max_persons, model_name: @boat.model_name, model_year: @boat.model_year, name: @boat.name, permalink: @boat.permalink, water_capacity: @boat.water_capacity }
    assert_redirected_to boat_path(assigns(:boat))
  end

  test "should destroy boat" do
    assert_difference('Boat.count', -1) do
      delete :destroy, id: @boat
    end

    assert_redirected_to boats_path
  end
end
