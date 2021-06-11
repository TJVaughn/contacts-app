require "test_helper"

class RolladexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rolladex = rolladexes(:one)
  end

  test "should get index" do
    get rolladexes_url
    assert_response :success
  end

  test "should get new" do
    get new_rolladex_url
    assert_response :success
  end

  test "should create rolladex" do
    assert_difference('Rolladex.count') do
      post rolladexes_url, params: { rolladex: { email: @rolladex.email, first_name: @rolladex.first_name, last_name: @rolladex.last_name, telephone: @rolladex.telephone, twitter: @rolladex.twitter } }
    end

    assert_redirected_to rolladex_url(Rolladex.last)
  end

  test "should show rolladex" do
    get rolladex_url(@rolladex)
    assert_response :success
  end

  test "should get edit" do
    get edit_rolladex_url(@rolladex)
    assert_response :success
  end

  test "should update rolladex" do
    patch rolladex_url(@rolladex), params: { rolladex: { email: @rolladex.email, first_name: @rolladex.first_name, last_name: @rolladex.last_name, telephone: @rolladex.telephone, twitter: @rolladex.twitter } }
    assert_redirected_to rolladex_url(@rolladex)
  end

  test "should destroy rolladex" do
    assert_difference('Rolladex.count', -1) do
      delete rolladex_url(@rolladex)
    end

    assert_redirected_to rolladexes_url
  end
end
