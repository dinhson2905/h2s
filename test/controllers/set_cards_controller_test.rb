require 'test_helper'

class SetCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_card = set_cards(:one)
  end

  test "should get index" do
    get set_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_set_card_url
    assert_response :success
  end

  test "should create set_card" do
    assert_difference('SetCard.count') do
      post set_cards_url, params: { set_card: { title: @set_card.title, user_id: @set_card.user_id } }
    end

    assert_redirected_to set_card_url(SetCard.last)
  end

  test "should show set_card" do
    get set_card_url(@set_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_card_url(@set_card)
    assert_response :success
  end

  test "should update set_card" do
    patch set_card_url(@set_card), params: { set_card: { title: @set_card.title, user_id: @set_card.user_id } }
    assert_redirected_to set_card_url(@set_card)
  end

  test "should destroy set_card" do
    assert_difference('SetCard.count', -1) do
      delete set_card_url(@set_card)
    end

    assert_redirected_to set_cards_url
  end
end
