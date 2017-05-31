require 'test_helper'

class BreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breed = breeds(:one)
  end

  test "should get index" do
    get breeds_url
    assert_response :success
  end

  test "should get new" do
    get new_breed_url
    assert_response :success
  end

  test "should create breed" do
    assert_difference('Breed.count') do
      post breeds_url, params: { breed: { characteristics: @breed.characteristics, name: @breed.name } }
    end

    assert_redirected_to breed_url(Breed.last)
  end

  test "should show breed" do
    get breed_url(@breed)
    assert_response :success
  end

  test "should get edit" do
    get edit_breed_url(@breed)
    assert_response :success
  end

  test "should update breed" do
    patch breed_url(@breed), params: { breed: { characteristics: @breed.characteristics, name: @breed.name } }
    assert_redirected_to breed_url(@breed)
  end

  test "should destroy breed" do
    assert_difference('Breed.count', -1) do
      delete breed_url(@breed)
    end

    assert_redirected_to breeds_url
  end
end
