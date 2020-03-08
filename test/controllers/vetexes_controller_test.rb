require 'test_helper'

class VetexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vetex = vetexes(:one)
  end

  test "should get index" do
    get vetexes_url, as: :json
    assert_response :success
  end

  test "should create vetex" do
    assert_difference('Vetex.count') do
      post vetexes_url, params: { vetex: { delete_time: @vetex.delete_time, icon_name: @vetex.icon_name, is_on_stock: @vetex.is_on_stock, name: @vetex.name } }, as: :json
    end

    assert_response 201
  end

  test "should show vetex" do
    get vetex_url(@vetex), as: :json
    assert_response :success
  end

  test "should update vetex" do
    patch vetex_url(@vetex), params: { vetex: { delete_time: @vetex.delete_time, icon_name: @vetex.icon_name, is_on_stock: @vetex.is_on_stock, name: @vetex.name } }, as: :json
    assert_response 200
  end

  test "should destroy vetex" do
    assert_difference('Vetex.count', -1) do
      delete vetex_url(@vetex), as: :json
    end

    assert_response 204
  end
end
