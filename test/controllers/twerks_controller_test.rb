require 'test_helper'

class TwerksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twerk = twerks(:one)
  end

  test "should get index" do
    get twerks_url
    assert_response :success
  end

  test "should get new" do
    get new_twerk_url
    assert_response :success
  end

  test "should create twerk" do
    assert_difference('Twerk.count') do
      post twerks_url, params: { twerk: { content: @twerk.content, user_id: @twerk.user_id } }
    end

    assert_redirected_to twerk_url(Twerk.last)
  end

  test "should show twerk" do
    get twerk_url(@twerk)
    assert_response :success
  end

  test "should get edit" do
    get edit_twerk_url(@twerk)
    assert_response :success
  end

  test "should update twerk" do
    patch twerk_url(@twerk), params: { twerk: { content: @twerk.content, user_id: @twerk.user_id } }
    assert_redirected_to twerk_url(@twerk)
  end

  test "should destroy twerk" do
    assert_difference('Twerk.count', -1) do
      delete twerk_url(@twerk)
    end

    assert_redirected_to twerks_url
  end
end
