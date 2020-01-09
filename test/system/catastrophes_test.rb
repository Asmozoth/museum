require "application_system_test_case"

class CatastrophesTest < ApplicationSystemTestCase
  setup do
    @catastrophe = catastrophes(:one)
  end

  test "visiting the index" do
    visit catastrophes_url
    assert_selector "h1", text: "Catastrophes"
  end

  test "creating a Catastrophe" do
    visit catastrophes_url
    click_on "New Catastrophe"

    fill_in "Blesses", with: @catastrophe.blesses
    fill_in "Date", with: @catastrophe.date
    fill_in "Image", with: @catastrophe.image
    fill_in "Lieu", with: @catastrophe.lieu
    fill_in "Morts", with: @catastrophe.morts
    fill_in "Nom", with: @catastrophe.nom
    fill_in "Puissance", with: @catastrophe.puissance
    fill_in "Type", with: @catastrophe.type
    click_on "Create Catastrophe"

    assert_text "Catastrophe was successfully created"
    click_on "Back"
  end

  test "updating a Catastrophe" do
    visit catastrophes_url
    click_on "Edit", match: :first

    fill_in "Blesses", with: @catastrophe.blesses
    fill_in "Date", with: @catastrophe.date
    fill_in "Image", with: @catastrophe.image
    fill_in "Lieu", with: @catastrophe.lieu
    fill_in "Morts", with: @catastrophe.morts
    fill_in "Nom", with: @catastrophe.nom
    fill_in "Puissance", with: @catastrophe.puissance
    fill_in "Type", with: @catastrophe.type
    click_on "Update Catastrophe"

    assert_text "Catastrophe was successfully updated"
    click_on "Back"
  end

  test "destroying a Catastrophe" do
    visit catastrophes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catastrophe was successfully destroyed"
  end
end
