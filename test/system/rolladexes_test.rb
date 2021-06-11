require "application_system_test_case"

class RolladexesTest < ApplicationSystemTestCase
  setup do
    @rolladex = rolladexes(:one)
  end

  test "visiting the index" do
    visit rolladexes_url
    assert_selector "h1", text: "Rolladexes"
  end

  test "creating a Rolladex" do
    visit rolladexes_url
    click_on "New Rolladex"

    fill_in "Email", with: @rolladex.email
    fill_in "First name", with: @rolladex.first_name
    fill_in "Last name", with: @rolladex.last_name
    fill_in "Telephone", with: @rolladex.telephone
    fill_in "Twitter", with: @rolladex.twitter
    click_on "Create Rolladex"

    assert_text "Rolladex was successfully created"
    click_on "Back"
  end

  test "updating a Rolladex" do
    visit rolladexes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @rolladex.email
    fill_in "First name", with: @rolladex.first_name
    fill_in "Last name", with: @rolladex.last_name
    fill_in "Telephone", with: @rolladex.telephone
    fill_in "Twitter", with: @rolladex.twitter
    click_on "Update Rolladex"

    assert_text "Rolladex was successfully updated"
    click_on "Back"
  end

  test "destroying a Rolladex" do
    visit rolladexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rolladex was successfully destroyed"
  end
end
