require 'test_helper'

class CordurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cordura = corduras(:one)
  end

  test "should get index" do
    get corduras_url, as: :json
    assert_response :success
  end

  test "should create cordura" do
    assert_difference('Cordura.count') do
      post corduras_url, params: { cordura: { color_in_hexa: @cordura.color_in_hexa, colour_name: @cordura.colour_name, delete_time: @cordura.delete_time, stock_at_full: @cordura.stock_at_full, stock_on_hand: @cordura.stock_on_hand } }, as: :json
    end

    assert_response 201
  end

  test "should show cordura" do
    get cordura_url(@cordura), as: :json
    assert_response :success
  end

  test "should update cordura" do
    patch cordura_url(@cordura), params: { cordura: { color_in_hexa: @cordura.color_in_hexa, colour_name: @cordura.colour_name, delete_time: @cordura.delete_time, stock_at_full: @cordura.stock_at_full, stock_on_hand: @cordura.stock_on_hand } }, as: :json
    assert_response 200
  end

  test "should destroy cordura" do
    assert_difference('Cordura.count', -1) do
      delete cordura_url(@cordura), as: :json
    end

    assert_response 204
  end
end
