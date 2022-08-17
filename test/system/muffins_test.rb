require "application_system_test_case"

class MuffinsTest < ApplicationSystemTestCase
  setup do
    @muffin = muffins(:one)
  end

  test "visiting the index" do
    visit muffins_url
    assert_selector "h1", text: "Muffins"
  end

  test "should create muffin" do
    visit muffins_url
    click_on "New muffin"

    fill_in "Id", with: @muffin.id
    fill_in "Name", with: @muffin.name
    fill_in "Price", with: @muffin.price
    click_on "Create Muffin"

    assert_text "Muffin was successfully created"
    click_on "Back"
  end

  test "should update Muffin" do
    visit muffin_url(@muffin)
    click_on "Edit this muffin", match: :first

    fill_in "Id", with: @muffin.id
    fill_in "Name", with: @muffin.name
    fill_in "Price", with: @muffin.price
    click_on "Update Muffin"

    assert_text "Muffin was successfully updated"
    click_on "Back"
  end

  test "should destroy Muffin" do
    visit muffin_url(@muffin)
    click_on "Destroy this muffin", match: :first

    assert_text "Muffin was successfully destroyed"
  end
end
