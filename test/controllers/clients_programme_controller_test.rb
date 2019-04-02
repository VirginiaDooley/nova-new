require 'test_helper'

class ClientsProgrammeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clients_programme_new_url
    assert_response :success
  end

  test "should get create" do
    get clients_programme_create_url
    assert_response :success
  end

  test "should get update" do
    get clients_programme_update_url
    assert_response :success
  end

end
