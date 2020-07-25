require "application_system_test_case"

class BlogappsTest < ApplicationSystemTestCase
  setup do
    @blogapp = blogapps(:one)
  end

  test "visiting the index" do
    visit blogapps_url
    assert_selector "h1", text: "Blogapps"
  end

  test "creating a Blogapp" do
    visit blogapps_url
    click_on "New Blogapp"

    click_on "Create Blogapp"

    assert_text "Blogapp was successfully created"
    click_on "Back"
  end

  test "updating a Blogapp" do
    visit blogapps_url
    click_on "Edit", match: :first

    click_on "Update Blogapp"

    assert_text "Blogapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Blogapp" do
    visit blogapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blogapp was successfully destroyed"
  end
end
