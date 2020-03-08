require 'test_helper'

class ThreadItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_item = thread_items(:one)
  end

  test "should get index" do
    get thread_items_url, as: :json
    assert_response :success
  end

  test "should create thread_item" do
    assert_difference('ThreadItem.count') do
      post thread_items_url, params: { thread_item: { color_in_hexa: @thread_item.color_in_hexa, colour_name: @thread_item.colour_name, colour_number: @thread_item.colour_number, delete_time: @thread_item.delete_time, stock_at_full: @thread_item.stock_at_full, stock_on_hand: @thread_item.stock_on_hand } }, as: :json
    end

    assert_response 201
  end

  test "should show thread_item" do
    get thread_item_url(@thread_item), as: :json
    assert_response :success
  end

  test "should update thread_item" do
    patch thread_item_url(@thread_item), params: { thread_item: { color_in_hexa: @thread_item.color_in_hexa, colour_name: @thread_item.colour_name, colour_number: @thread_item.colour_number, delete_time: @thread_item.delete_time, stock_at_full: @thread_item.stock_at_full, stock_on_hand: @thread_item.stock_on_hand } }, as: :json
    assert_response 200
  end

  test "should destroy thread_item" do
    assert_difference('ThreadItem.count', -1) do
      delete thread_item_url(@thread_item), as: :json
    end

    assert_response 204
  end
end
