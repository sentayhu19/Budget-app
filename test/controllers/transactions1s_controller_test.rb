require 'test_helper'

class Transactions1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transactions1 = transactions1s(:one)
  end

  test 'should get index' do
    get transactions1s_url
    assert_response :success
  end

  test 'should get new' do
    get new_transactions1_url
    assert_response :success
  end

  test 'should create transactions1' do
    assert_difference('Transactions1.count') do
      post transactions1s_url,
           params: { transactions1: { User_id: @transactions1.User_id, amount: @transactions1.amount,
                                      name: @transactions1.name } }
    end

    assert_redirected_to transactions1_url(Transactions1.last)
  end

  test 'should show transactions1' do
    get transactions1_url(@transactions1)
    assert_response :success
  end

  test 'should get edit' do
    get edit_transactions1_url(@transactions1)
    assert_response :success
  end

  test 'should update transactions1' do
    patch transactions1_url(@transactions1),
          params: { transactions1: { User_id: @transactions1.User_id, amount: @transactions1.amount,
                                     name: @transactions1.name } }
    assert_redirected_to transactions1_url(@transactions1)
  end

  test 'should destroy transactions1' do
    assert_difference('Transactions1.count', -1) do
      delete transactions1_url(@transactions1)
    end

    assert_redirected_to transactions1s_url
  end
end
