require 'application_system_test_case'

class CategoriesTransaction1sTest < ApplicationSystemTestCase
  setup do
    @categories_transaction1 = categories_transaction1s(:one)
  end

  test 'visiting the index' do
    visit categories_transaction1s_url
    assert_selector 'h1', text: 'Categories transaction1s'
  end

  test 'should create categories transaction1' do
    visit categories_transaction1s_url
    click_on 'New categories transaction1'

    fill_in 'Categories', with: @categories_transaction1.categories_id
    fill_in 'Transactions1s', with: @categories_transaction1.transactions1s_id
    click_on 'Create Categories transaction1'

    assert_text 'Categories transaction1 was successfully created'
    click_on 'Back'
  end

  test 'should update Categories transaction1' do
    visit categories_transaction1_url(@categories_transaction1)
    click_on 'Edit this categories transaction1', match: :first

    fill_in 'Categories', with: @categories_transaction1.categories_id
    fill_in 'Transactions1s', with: @categories_transaction1.transactions1s_id
    click_on 'Update Categories transaction1'

    assert_text 'Categories transaction1 was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Categories transaction1' do
    visit categories_transaction1_url(@categories_transaction1)
    click_on 'Destroy this categories transaction1', match: :first

    assert_text 'Categories transaction1 was successfully destroyed'
  end
end
