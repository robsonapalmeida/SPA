require "application_system_test_case"

class UserXServicesTest < ApplicationSystemTestCase
  setup do
    @user_x_service = user_x_services(:one)
  end

  test "visiting the index" do
    visit user_x_services_url
    assert_selector "h1", text: "User X Services"
  end

  test "creating a User x service" do
    visit user_x_services_url
    click_on "New User X Service"

    fill_in "Email", with: @user_x_service.email
    fill_in "Message", with: @user_x_service.message
    fill_in "Name", with: @user_x_service.name
    fill_in "Service", with: @user_x_service.service
    fill_in "Servicedate", with: @user_x_service.servicedate
    click_on "Create User x service"

    assert_text "User x service was successfully created"
    click_on "Back"
  end

  test "updating a User x service" do
    visit user_x_services_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_x_service.email
    fill_in "Message", with: @user_x_service.message
    fill_in "Name", with: @user_x_service.name
    fill_in "Service", with: @user_x_service.service
    fill_in "Servicedate", with: @user_x_service.servicedate
    click_on "Update User x service"

    assert_text "User x service was successfully updated"
    click_on "Back"
  end

  test "destroying a User x service" do
    visit user_x_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User x service was successfully destroyed"
  end
end
