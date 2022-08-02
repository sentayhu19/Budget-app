require "application_system_test_case"

class CategoriesTransactionsTest < ApplicationSystemTestCase
  setup do
    @categories_transaction = categories_transactions(:one)
  end

  test "visiting the index" do
    visit categories_transactions_url
    assert_selector "h1", text: "Categories transactions"
  end

  test "should create categories transaction" do
    visit categories_transactions_url
    click_on "New categories transaction"

    fill_in "Categories", with: @categories_transaction.categories_id
    fill_in "Transactions", with: @categories_transaction.transactions_id
    click_on "Create Categories transaction"

    assert_text "Categories transaction was successfully created"
    click_on "Back"
  end

  test "should update Categories transaction" do
    visit categories_transaction_url(@categories_transaction)
    click_on "Edit this categories transaction", match: :first

    fill_in "Categories", with: @categories_transaction.categories_id
    fill_in "Transactions", with: @categories_transaction.transactions_id
    click_on "Update Categories transaction"

    assert_text "Categories transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Categories transaction" do
    visit categories_transaction_url(@categories_transaction)
    click_on "Destroy this categories transaction", match: :first

    assert_text "Categories transaction was successfully destroyed"
  end
end
