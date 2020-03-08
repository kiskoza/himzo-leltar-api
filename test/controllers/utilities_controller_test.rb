require 'test_helper'

class UtilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utility = utilities(:one)
  end

  test "should get index" do
    get utilities_url, as: :json
    assert_response :success
  end

  test "should create utility" do
    assert_difference('Utility.count') do
      post utilities_url, params: { utility: { delete_time: @utility.delete_time, icon_name: @utility.icon_name, name: @utility.name, stock_at_full: @utility.stock_at_full, stock_on_hand: @utility.stock_on_hand } }, as: :json
    end

    assert_response 201
  end

  test "should show utility" do
    get utility_url(@utility), as: :json
    assert_response :success
  end

  test "should update utility" do
    patch utility_url(@utility), params: { utility: { delete_time: @utility.delete_time, icon_name: @utility.icon_name, name: @utility.name, stock_at_full: @utility.stock_at_full, stock_on_hand: @utility.stock_on_hand } }, as: :json
    assert_response 200
  end

  test "should destroy utility" do
    assert_difference('Utility.count', -1) do
      delete utility_url(@utility), as: :json
    end

    assert_response 204
  end
end
