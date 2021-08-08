require "test_helper"

class CovidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid = covids(:one)
  end

  test "should get index" do
    get covids_url, as: :json
    assert_response :success
  end

  test "should create covid" do
    assert_difference('Covid.count') do
      post covids_url, params: { covid: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show covid" do
    get covid_url(@covid), as: :json
    assert_response :success
  end

  test "should update covid" do
    patch covid_url(@covid), params: { covid: {  } }, as: :json
    assert_response 200
  end

  test "should destroy covid" do
    assert_difference('Covid.count', -1) do
      delete covid_url(@covid), as: :json
    end

    assert_response 204
  end
end
