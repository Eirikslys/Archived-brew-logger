require "test_helper"

class BrewingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brewing = brewings(:one)
  end

  test "should get index" do
    get brewings_url
    assert_response :success
  end

  test "should get new" do
    get new_brewing_url
    assert_response :success
  end

  test "should create brewing" do
    assert_difference('Brewing.count') do
      post brewings_url, params: { brewing: { batch_number: @brewing.batch_number, brewers: @brewing.brewers, date: @brewing.date, final_gravity: @brewing.final_gravity, name: @brewing.name, notes: @brewing.notes, original_gravity: @brewing.original_gravity, strength: @brewing.strength } }
    end

    assert_redirected_to brewing_url(Brewing.last)
  end

  test "should show brewing" do
    get brewing_url(@brewing)
    assert_response :success
  end

  test "should get edit" do
    get edit_brewing_url(@brewing)
    assert_response :success
  end

  test "should update brewing" do
    patch brewing_url(@brewing), params: { brewing: { batch_number: @brewing.batch_number, brewers: @brewing.brewers, date: @brewing.date, final_gravity: @brewing.final_gravity, name: @brewing.name, notes: @brewing.notes, original_gravity: @brewing.original_gravity, strength: @brewing.strength } }
    assert_redirected_to brewing_url(@brewing)
  end

  test "should destroy brewing" do
    assert_difference('Brewing.count', -1) do
      delete brewing_url(@brewing)
    end

    assert_redirected_to brewings_url
  end
end
