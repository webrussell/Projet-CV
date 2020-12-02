require "application_system_test_case"

class ConnaissancesTest < ApplicationSystemTestCase
  setup do
    @connaissance = connaissances(:one)
  end

  test "visiting the index" do
    visit connaissances_url
    assert_selector "h1", text: "Connaissances"
  end

  test "creating a Connaissance" do
    visit connaissances_url
    click_on "New Connaissance"

    fill_in "Description", with: @connaissance.description
    fill_in "Nom", with: @connaissance.nom
    click_on "Create Connaissance"

    assert_text "Connaissance was successfully created"
    click_on "Back"
  end

  test "updating a Connaissance" do
    visit connaissances_url
    click_on "Edit", match: :first

    fill_in "Description", with: @connaissance.description
    fill_in "Nom", with: @connaissance.nom
    click_on "Update Connaissance"

    assert_text "Connaissance was successfully updated"
    click_on "Back"
  end

  test "destroying a Connaissance" do
    visit connaissances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Connaissance was successfully destroyed"
  end
end
