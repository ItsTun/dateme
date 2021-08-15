require "test_helper"

class LadiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lady = ladies(:one)
  end

  test "should get index" do
    get ladies_url
    assert_response :success
  end

  test "should get new" do
    get new_lady_url
    assert_response :success
  end

  test "should create lady" do
    assert_difference('Lady.count') do
      post ladies_url, params: { lady: {  } }
    end

    assert_redirected_to lady_url(Lady.last)
  end

  test "should show lady" do
    get lady_url(@lady)
    assert_response :success
  end

  test "should get edit" do
    get edit_lady_url(@lady)
    assert_response :success
  end

  test "should update lady" do
    patch lady_url(@lady), params: { lady: {  } }
    assert_redirected_to lady_url(@lady)
  end

  test "should destroy lady" do
    assert_difference('Lady.count', -1) do
      delete lady_url(@lady)
    end

    assert_redirected_to ladies_url
  end
end
