require 'test_helper'

class UserXServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_x_service = user_x_services(:one)
  end

  test "should get index" do
    get user_x_services_url
    assert_response :success
  end

  test "should get new" do
    get new_user_x_service_url
    assert_response :success
  end

  test "should create user_x_service" do
    assert_difference('UserXService.count') do
      post user_x_services_url, params: { user_x_service: { email: @user_x_service.email, message: @user_x_service.message, name: @user_x_service.name, service: @user_x_service.service, servicedate: @user_x_service.servicedate } }
    end

    assert_redirected_to user_x_service_url(UserXService.last)
  end

  test "should show user_x_service" do
    get user_x_service_url(@user_x_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_x_service_url(@user_x_service)
    assert_response :success
  end

  test "should update user_x_service" do
    patch user_x_service_url(@user_x_service), params: { user_x_service: { email: @user_x_service.email, message: @user_x_service.message, name: @user_x_service.name, service: @user_x_service.service, servicedate: @user_x_service.servicedate } }
    assert_redirected_to user_x_service_url(@user_x_service)
  end

  test "should destroy user_x_service" do
    assert_difference('UserXService.count', -1) do
      delete user_x_service_url(@user_x_service)
    end

    assert_redirected_to user_x_services_url
  end
end
