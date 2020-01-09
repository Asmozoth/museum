require 'test_helper'

class CatastrophesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catastrophe = catastrophes(:one)
  end

  test "should get index" do
    get catastrophes_url
    assert_response :success
  end

  test "should get new" do
    get new_catastrophe_url
    assert_response :success
  end

  test "should create catastrophe" do
    assert_difference('Catastrophe.count') do
      post catastrophes_url, params: { catastrophe: { blesses: @catastrophe.blesses, date: @catastrophe.date, genre: @catastrophe.genre, image: @catastrophe.image, lieu: @catastrophe.lieu, morts: @catastrophe.morts, nom: @catastrophe.nom, puissance: @catastrophe.puissance } }
    end

    assert_redirected_to catastrophe_url(Catastrophe.last)
  end

  test "should show catastrophe" do
    get catastrophe_url(@catastrophe)
    assert_response :success
  end

  test "should get edit" do
    get edit_catastrophe_url(@catastrophe)
    assert_response :success
  end

  test "should update catastrophe" do
    patch catastrophe_url(@catastrophe), params: { catastrophe: { blesses: @catastrophe.blesses, date: @catastrophe.date, genre: @catastrophe.genre, image: @catastrophe.image, lieu: @catastrophe.lieu, morts: @catastrophe.morts, nom: @catastrophe.nom, puissance: @catastrophe.puissance } }
    assert_redirected_to catastrophe_url(@catastrophe)
  end

  test "should destroy catastrophe" do
    assert_difference('Catastrophe.count', -1) do
      delete catastrophe_url(@catastrophe)
    end

    assert_redirected_to catastrophes_url
  end
end
