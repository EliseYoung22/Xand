require 'test_helper'

class DentalProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dental_product = dental_products(:one)
  end

  test "should get index" do
    get dental_products_url
    assert_response :success
  end

  test "should get new" do
    get new_dental_product_url
    assert_response :success
  end

  test "should create dental_product" do
    assert_difference('DentalProduct.count') do
      post dental_products_url, params: { dental_product: { description: @dental_product.description, image: @dental_product.image, subtitle: @dental_product.subtitle, title: @dental_product.title } }
    end

    assert_redirected_to dental_product_url(DentalProduct.last)
  end

  test "should show dental_product" do
    get dental_product_url(@dental_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_dental_product_url(@dental_product)
    assert_response :success
  end

  test "should update dental_product" do
    patch dental_product_url(@dental_product), params: { dental_product: { description: @dental_product.description, image: @dental_product.image, subtitle: @dental_product.subtitle, title: @dental_product.title } }
    assert_redirected_to dental_product_url(@dental_product)
  end

  test "should destroy dental_product" do
    assert_difference('DentalProduct.count', -1) do
      delete dental_product_url(@dental_product)
    end

    assert_redirected_to dental_products_url
  end
end
