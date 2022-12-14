require 'test_helper'

class MerchantsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get merchants_index_url
    assert_response :success
  end

  test 'should get show' do
    get merchants_show_url
    assert_response :success
  end

  test 'should get edit' do
    get merchants_edit_url
    assert_response :success
  end
end
