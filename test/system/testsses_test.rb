require "application_system_test_case"

class TestssesTest < ApplicationSystemTestCase
  setup do
    @testss = testsses(:one)
  end

  test "visiting the index" do
    visit testsses_url
    assert_selector "h1", text: "Testsses"
  end

  test "creating a Testss" do
    visit testsses_url
    click_on "New Testss"

    fill_in "Content", with: @testss.content
    fill_in "Title", with: @testss.title
    click_on "Create Testss"

    assert_text "Testss was successfully created"
    click_on "Back"
  end

  test "updating a Testss" do
    visit testsses_url
    click_on "Edit", match: :first

    fill_in "Content", with: @testss.content
    fill_in "Title", with: @testss.title
    click_on "Update Testss"

    assert_text "Testss was successfully updated"
    click_on "Back"
  end

  test "destroying a Testss" do
    visit testsses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testss was successfully destroyed"
  end
end
