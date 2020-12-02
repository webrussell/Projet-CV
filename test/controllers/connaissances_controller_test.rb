require 'test_helper'

class ConnaissancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connaissance = connaissances(:one)
  end

  test "should get index" do
    get connaissances_url
    assert_response :success
  end

  test "should get new" do
    get new_connaissance_url
    assert_response :success
  end

  test "should create connaissance" do
    assert_difference('Connaissance.count') do
      post connaissances_url, params: { connaissance: { description: @connaissance.description, nom: @connaissance.nom } }
    end

    assert_redirected_to connaissance_url(Connaissance.last)
  end

  test "should show connaissance" do
    get connaissance_url(@connaissance)
    assert_response :success
  end

  test "should get edit" do
    get edit_connaissance_url(@connaissance)
    assert_response :success
  end

  test "should update connaissance" do
    patch connaissance_url(@connaissance), params: { connaissance: { description: @connaissance.description, nom: @connaissance.nom } }
    assert_redirected_to connaissance_url(@connaissance)
  end

  test "should destroy connaissance" do
    assert_difference('Connaissance.count', -1) do
      delete connaissance_url(@connaissance)
    end

    assert_redirected_to connaissances_url
  end
end
