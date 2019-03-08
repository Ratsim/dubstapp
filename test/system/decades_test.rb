require "application_system_test_case"

class DecadesTest < ApplicationSystemTestCase
  setup do
    @decade = decades(:one)
  end

  test "visiting the index" do
    visit decades_url
    assert_selector "h1", text: "Decades"
  end

  test "creating a Decade" do
    visit decades_url
    click_on "New Decade"

    fill_in "Description", with: @decade.description
    fill_in "Image", with: @decade.image
    fill_in "Song", with: @decade.song
    fill_in "Title", with: @decade.title
    click_on "Create Decade"

    assert_text "Decade was successfully created"
    click_on "Back"
  end

  test "updating a Decade" do
    visit decades_url
    click_on "Edit", match: :first

    fill_in "Description", with: @decade.description
    fill_in "Image", with: @decade.image
    fill_in "Song", with: @decade.song
    fill_in "Title", with: @decade.title
    click_on "Update Decade"

    assert_text "Decade was successfully updated"
    click_on "Back"
  end

  test "destroying a Decade" do
    visit decades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Decade was successfully destroyed"
  end
end
