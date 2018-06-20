require 'test_helper'

class CrustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crust = crusts(:one)
  end

  test "should get index" do
    get crusts_url
    assert_response :success
  end

  test "should get new" do
    get new_crust_url
    assert_response :success
  end

  test "should create crust" do
    assert_difference('Crust.count') do
      post crusts_url, params: { crust: { price: @crust.price, type: @crust.type } }
    end

    assert_redirected_to crust_url(Crust.last)
  end

  test "should show crust" do
    get crust_url(@crust)
    assert_response :success
  end

  test "should get edit" do
    get edit_crust_url(@crust)
    assert_response :success
  end

  test "should update crust" do
    patch crust_url(@crust), params: { crust: { price: @crust.price, type: @crust.type } }
    assert_redirected_to crust_url(@crust)
  end

  test "should destroy crust" do
    assert_difference('Crust.count', -1) do
      delete crust_url(@crust)
    end

    assert_redirected_to crusts_url
  end
end
