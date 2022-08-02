require "test_helper"

class CategoriesTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_transaction = categories_transactions(:one)
  end

  test "should get index" do
    get categories_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_transaction_url
    assert_response :success
  end

  test "should create categories_transaction" do
    assert_difference("CategoriesTransaction.count") do
      post categories_transactions_url, params: { categories_transaction: { categories_id: @categories_transaction.categories_id, transactions_id: @categories_transaction.transactions_id } }
    end

    assert_redirected_to categories_transaction_url(CategoriesTransaction.last)
  end

  test "should show categories_transaction" do
    get categories_transaction_url(@categories_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_transaction_url(@categories_transaction)
    assert_response :success
  end

  test "should update categories_transaction" do
    patch categories_transaction_url(@categories_transaction), params: { categories_transaction: { categories_id: @categories_transaction.categories_id, transactions_id: @categories_transaction.transactions_id } }
    assert_redirected_to categories_transaction_url(@categories_transaction)
  end

  test "should destroy categories_transaction" do
    assert_difference("CategoriesTransaction.count", -1) do
      delete categories_transaction_url(@categories_transaction)
    end

    assert_redirected_to categories_transactions_url
  end
end
