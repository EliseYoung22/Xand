require 'test_helper'

class CryoProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cryo_product = cryo_products(:one)
  end

  test "should get index" do
    get cryo_products_url
    assert_response :success
  end

  test "should get new" do
    get new_cryo_product_url
    assert_response :success
  end

  test "should create cryo_product" do
    assert_difference('CryoProduct.count') do
      post cryo_products_url, params: { cryo_product: { description: @cryo_product.description, image: @cryo_product.image, subtitle: @cryo_product.subtitle, title: @cryo_product.title } }
    end

    assert_redirected_to cryo_product_url(CryoProduct.last)
  end

  test "should show cryo_product" do
    get cryo_product_url(@cryo_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_cryo_product_url(@cryo_product)
    assert_response :success
  end

  test "should update cryo_product" do
    patch cryo_product_url(@cryo_product), params: { cryo_product: { description: @cryo_product.description, image: @cryo_product.image, subtitle: @cryo_product.subtitle, title: @cryo_product.title } }
    assert_redirected_to cryo_product_url(@cryo_product)
  end

  test "should destroy cryo_product" do
    assert_difference('CryoProduct.count', -1) do
      delete cryo_product_url(@cryo_product)
    end

    assert_redirected_to cryo_products_url
  end
end
