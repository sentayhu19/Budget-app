require 'application_system_test_case'

class Transactions1sTest < ApplicationSystemTestCase
  setup do
    @transactions1 = transactions1s(:one)
  end

  test 'visiting the index' do
    visit transactions1s_url
    assert_selector 'h1', text: 'Transactions1s'
  end

  test 'should create transactions1' do
    visit transactions1s_url
    click_on 'New transactions1'

    fill_in 'User', with: @transactions1.User_id
    fill_in 'Amount', with: @transactions1.amount
    fill_in 'Name', with: @transactions1.name
    click_on 'Create Transactions1'

    assert_text 'Transactions1 was successfully created'
    click_on 'Back'
  end

  test 'should update Transactions1' do
    visit transactions1_url(@transactions1)
    click_on 'Edit this transactions1', match: :first

    fill_in 'User', with: @transactions1.User_id
    fill_in 'Amount', with: @transactions1.amount
    fill_in 'Name', with: @transactions1.name
    click_on 'Update Transactions1'

    assert_text 'Transactions1 was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Transactions1' do
    visit transactions1_url(@transactions1)
    click_on 'Destroy this transactions1', match: :first

    assert_text 'Transactions1 was successfully destroyed'
  end
end
