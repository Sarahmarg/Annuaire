require "application_system_test_case"

class OffersTest < ApplicationSystemTestCase
  setup do
    @offer = offers(:one)
  end

  test "visiting the index" do
    visit offers_url
    assert_selector "h1", text: "Offers"
  end

  test "creating a Offer" do
    visit offers_url
    click_on "New Offer"

    fill_in "Adress", with: @offer.adress
    fill_in "Category", with: @offer.category_id
    fill_in "Description", with: @offer.description
    fill_in "Phone", with: @offer.phone
    fill_in "Price", with: @offer.price
    fill_in "Title", with: @offer.title
    fill_in "User", with: @offer.user
    click_on "Create Offer"

    assert_text "Offer was successfully created"
    click_on "Back"
  end

  test "updating a Offer" do
    visit offers_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @offer.adress
    fill_in "Category", with: @offer.category_id
    fill_in "Description", with: @offer.description
    fill_in "Phone", with: @offer.phone
    fill_in "Price", with: @offer.price
    fill_in "Title", with: @offer.title
    fill_in "User", with: @offer.user
    click_on "Update Offer"

    assert_text "Offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer" do
    visit offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer was successfully destroyed"
  end
end
