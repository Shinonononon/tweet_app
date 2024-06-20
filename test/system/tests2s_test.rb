require "application_system_test_case"

class Tests2sTest < ApplicationSystemTestCase
  setup do
    @tests2 = tests2s(:one)
  end

  test "visiting the index" do
    visit tests2s_url
    assert_selector "h1", text: "Tests2s"
  end

  test "creating a Tests2" do
    visit tests2s_url
    click_on "New Tests2"

    fill_in "Content", with: @tests2.content
    fill_in "Title", with: @tests2.title
    click_on "Create Tests2"

    assert_text "Tests2 was successfully created"
    click_on "Back"
  end

  test "updating a Tests2" do
    visit tests2s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @tests2.content
    fill_in "Title", with: @tests2.title
    click_on "Update Tests2"

    assert_text "Tests2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tests2" do
    visit tests2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tests2 was successfully destroyed"
  end
end
