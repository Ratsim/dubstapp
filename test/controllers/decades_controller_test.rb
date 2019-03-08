require 'test_helper'

class DecadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decade = decades(:one)
  end

  test "should get index" do
    get decades_url
    assert_response :success
  end

  test "should get new" do
    get new_decade_url
    assert_response :success
  end

  test "should create decade" do
    assert_difference('Decade.count') do
      post decades_url, params: { decade: { description: @decade.description, image: @decade.image, song: @decade.song, title: @decade.title } }
    end

    assert_redirected_to decade_url(Decade.last)
  end

  test "should show decade" do
    get decade_url(@decade)
    assert_response :success
  end

  test "should get edit" do
    get edit_decade_url(@decade)
    assert_response :success
  end

  test "should update decade" do
    patch decade_url(@decade), params: { decade: { description: @decade.description, image: @decade.image, song: @decade.song, title: @decade.title } }
    assert_redirected_to decade_url(@decade)
  end

  test "should destroy decade" do
    assert_difference('Decade.count', -1) do
      delete decade_url(@decade)
    end

    assert_redirected_to decades_url
  end
end
