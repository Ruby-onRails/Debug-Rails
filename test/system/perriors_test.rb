require "application_system_test_case"

class PerriorsTest < ApplicationSystemTestCase
  setup do
    @perrior = perriors(:one)
  end

  test "visiting the index" do
    visit perriors_url
    assert_selector "h1", text: "Perriors"
  end

  test "creating a Perrior" do
    visit perriors_url
    click_on "New Perrior"

    fill_in "Content", with: @perrior.content
    fill_in "Title", with: @perrior.title
    click_on "Create Perrior"

    assert_text "Perrior was successfully created"
    click_on "Back"
  end

  test "updating a Perrior" do
    visit perriors_url
    click_on "Edit", match: :first

    fill_in "Content", with: @perrior.content
    fill_in "Title", with: @perrior.title
    click_on "Update Perrior"

    assert_text "Perrior was successfully updated"
    click_on "Back"
  end

  test "destroying a Perrior" do
    visit perriors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perrior was successfully destroyed"
  end
end
