require "application_system_test_case"

class SetCardsTest < ApplicationSystemTestCase
  setup do
    @set_card = set_cards(:one)
  end

  test "visiting the index" do
    visit set_cards_url
    assert_selector "h1", text: "Set Cards"
  end

  test "creating a Set card" do
    visit set_cards_url
    click_on "New Set Card"

    fill_in "Title", with: @set_card.title
    fill_in "User", with: @set_card.user_id
    click_on "Create Set card"

    assert_text "Set card was successfully created"
    click_on "Back"
  end

  test "updating a Set card" do
    visit set_cards_url
    click_on "Edit", match: :first

    fill_in "Title", with: @set_card.title
    fill_in "User", with: @set_card.user_id
    click_on "Update Set card"

    assert_text "Set card was successfully updated"
    click_on "Back"
  end

  test "destroying a Set card" do
    visit set_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Set card was successfully destroyed"
  end
end
