require "application_system_test_case"

class CouchesTest < ApplicationSystemTestCase
  setup do
    @couch = couches(:one)
  end

  test "visiting the index" do
    visit couches_url
    assert_selector "h1", text: "Couches"
  end

  test "creating a Couche" do
    visit couches_url
    click_on "New Couche"

    fill_in "Marque", with: @couch.marque
    fill_in "Modele", with: @couch.modele
    fill_in "Taille", with: @couch.taille
    fill_in "User", with: @couch.user_id
    click_on "Create Couche"

    assert_text "Couche was successfully created"
    click_on "Back"
  end

  test "updating a Couche" do
    visit couches_url
    click_on "Edit", match: :first

    fill_in "Marque", with: @couch.marque
    fill_in "Modele", with: @couch.modele
    fill_in "Taille", with: @couch.taille
    fill_in "User", with: @couch.user_id
    click_on "Update Couche"

    assert_text "Couche was successfully updated"
    click_on "Back"
  end

  test "destroying a Couche" do
    visit couches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Couche was successfully destroyed"
  end
end
