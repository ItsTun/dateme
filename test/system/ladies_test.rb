require "application_system_test_case"

class LadiesTest < ApplicationSystemTestCase
  setup do
    @lady = ladies(:one)
  end

  test "visiting the index" do
    visit ladies_url
    assert_selector "h1", text: "Ladies"
  end

  test "creating a Lady" do
    visit ladies_url
    click_on "New Lady"

    click_on "Create Lady"

    assert_text "Lady was successfully created"
    click_on "Back"
  end

  test "updating a Lady" do
    visit ladies_url
    click_on "Edit", match: :first

    click_on "Update Lady"

    assert_text "Lady was successfully updated"
    click_on "Back"
  end

  test "destroying a Lady" do
    visit ladies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lady was successfully destroyed"
  end
end
