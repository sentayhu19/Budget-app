require 'test_helper'

class CategoriesTransaction1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_transaction1 = categories_transaction1s(:one)
  end

  test 'should get index' do
    get categories_transaction1s_url
    assert_response :success
  end

  test 'should get new' do
    get new_categories_transaction1_url
    assert_response :success
  end

  test 'should create categories_transaction1' do
    assert_difference('CategoriesTransaction1.count') do
      post categories_transaction1s_url,
           params: { categories_transaction1: { categories_id: @categories_transaction1.categories_id,
                                                transactions1s_id: @categories_transaction1.transactions1s_id } }
    end

    assert_redirected_to categories_transaction1_url(CategoriesTransaction1.last)
  end

  test 'should show categories_transaction1' do
    get categories_transaction1_url(@categories_transaction1)
    assert_response :success
  end

  test 'should get edit' do
    get edit_categories_transaction1_url(@categories_transaction1)
    assert_response :success
  end

  test 'should update categories_transaction1' do
    patch categories_transaction1_url(@categories_transaction1),
          params: { categories_transaction1: { categories_id: @categories_transaction1.categories_id,
                                               transactions1s_id: @categories_transaction1.transactions1s_id } }
    assert_redirected_to categories_transaction1_url(@categories_transaction1)
  end

  test 'should destroy categories_transaction1' do
    assert_difference('CategoriesTransaction1.count', -1) do
      delete categories_transaction1_url(@categories_transaction1)
    end

    assert_redirected_to categories_transaction1s_url
  end
end
