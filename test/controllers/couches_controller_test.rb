require 'test_helper'

class CouchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @couch = couches(:one)
  end

  test "should get index" do
    get couches_url
    assert_response :success
  end

  test "should get new" do
    get new_couch_url
    assert_response :success
  end

  test "should create couch" do
    assert_difference('Couche.count') do
      post couches_url, params: { couch: { marque: @couch.marque, modele: @couch.modele, taille: @couch.taille, user_id: @couch.user_id } }
    end

    assert_redirected_to couch_url(Couche.last)
  end

  test "should show couch" do
    get couch_url(@couch)
    assert_response :success
  end

  test "should get edit" do
    get edit_couch_url(@couch)
    assert_response :success
  end

  test "should update couch" do
    patch couch_url(@couch), params: { couch: { marque: @couch.marque, modele: @couch.modele, taille: @couch.taille, user_id: @couch.user_id } }
    assert_redirected_to couch_url(@couch)
  end

  test "should destroy couch" do
    assert_difference('Couche.count', -1) do
      delete couch_url(@couch)
    end

    assert_redirected_to couches_url
  end
end
