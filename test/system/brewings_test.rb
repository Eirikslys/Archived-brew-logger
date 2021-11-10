require "application_system_test_case"

class BrewingsTest < ApplicationSystemTestCase
  setup do
    @brewing = brewings(:one)
  end

  test "visiting the index" do
    visit brewings_url
    assert_selector "h1", text: "Brewings"
  end

  test "creating a Brewing" do
    visit brewings_url
    click_on "New Brewing"

    fill_in "Batch number", with: @brewing.batch_number
    fill_in "Brewers", with: @brewing.brewers
    fill_in "Date", with: @brewing.date
    fill_in "Final gravity", with: @brewing.final_gravity
    fill_in "Name", with: @brewing.name
    fill_in "Notes", with: @brewing.notes
    fill_in "Original gravity", with: @brewing.original_gravity
    fill_in "Strength", with: @brewing.strength
    click_on "Create Brewing"

    assert_text "Brewing was successfully created"
    click_on "Back"
  end

  test "updating a Brewing" do
    visit brewings_url
    click_on "Edit", match: :first

    fill_in "Batch number", with: @brewing.batch_number
    fill_in "Brewers", with: @brewing.brewers
    fill_in "Date", with: @brewing.date
    fill_in "Final gravity", with: @brewing.final_gravity
    fill_in "Name", with: @brewing.name
    fill_in "Notes", with: @brewing.notes
    fill_in "Original gravity", with: @brewing.original_gravity
    fill_in "Strength", with: @brewing.strength
    click_on "Update Brewing"

    assert_text "Brewing was successfully updated"
    click_on "Back"
  end

  test "destroying a Brewing" do
    visit brewings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brewing was successfully destroyed"
  end
end
