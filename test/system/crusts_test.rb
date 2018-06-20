require "application_system_test_case"

class CrustsTest < ApplicationSystemTestCase
  setup do
    @crust = crusts(:one)
  end

  test "visiting the index" do
    visit crusts_url
    assert_selector "h1", text: "Crusts"
  end

  test "creating a Crust" do
    visit crusts_url
    click_on "New Crust"

    fill_in "Price", with: @crust.price
    fill_in "Type", with: @crust.type
    click_on "Create Crust"

    assert_text "Crust was successfully created"
    click_on "Back"
  end

  test "updating a Crust" do
    visit crusts_url
    click_on "Edit", match: :first

    fill_in "Price", with: @crust.price
    fill_in "Type", with: @crust.type
    click_on "Update Crust"

    assert_text "Crust was successfully updated"
    click_on "Back"
  end

  test "destroying a Crust" do
    visit crusts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crust was successfully destroyed"
  end
end
