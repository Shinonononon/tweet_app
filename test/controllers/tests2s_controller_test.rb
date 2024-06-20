require "test_helper"

class Tests2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tests2 = tests2s(:one)
  end

  test "should get index" do
    get tests2s_url
    assert_response :success
  end

  test "should get new" do
    get new_tests2_url
    assert_response :success
  end

  test "should create tests2" do
    assert_difference('Tests2.count') do
      post tests2s_url, params: { tests2: { content: @tests2.content, title: @tests2.title } }
    end

    assert_redirected_to tests2_url(Tests2.last)
  end

  test "should show tests2" do
    get tests2_url(@tests2)
    assert_response :success
  end

  test "should get edit" do
    get edit_tests2_url(@tests2)
    assert_response :success
  end

  test "should update tests2" do
    patch tests2_url(@tests2), params: { tests2: { content: @tests2.content, title: @tests2.title } }
    assert_redirected_to tests2_url(@tests2)
  end

  test "should destroy tests2" do
    assert_difference('Tests2.count', -1) do
      delete tests2_url(@tests2)
    end

    assert_redirected_to tests2s_url
  end
end
