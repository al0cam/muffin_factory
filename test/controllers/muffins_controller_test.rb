require "test_helper"

class MuffinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muffin = muffins(:one)
  end

  test "should get index" do
    get muffins_url
    assert_response :success
  end

  test "should get new" do
    get new_muffin_url
    assert_response :success
  end

  test "should create muffin" do
    assert_difference("Muffin.count") do
      post muffins_url, params: { muffin: { id: @muffin.id, name: @muffin.name, price: @muffin.price } }
    end

    assert_redirected_to muffin_url(Muffin.last)
  end

  test "should show muffin" do
    get muffin_url(@muffin)
    assert_response :success
  end

  test "should get edit" do
    get edit_muffin_url(@muffin)
    assert_response :success
  end

  test "should update muffin" do
    patch muffin_url(@muffin), params: { muffin: { id: @muffin.id, name: @muffin.name, price: @muffin.price } }
    assert_redirected_to muffin_url(@muffin)
  end

  test "should destroy muffin" do
    assert_difference("Muffin.count", -1) do
      delete muffin_url(@muffin)
    end

    assert_redirected_to muffins_url
  end
end
