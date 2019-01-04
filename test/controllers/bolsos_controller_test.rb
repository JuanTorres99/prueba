require 'test_helper'

class BolsosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bolso = bolsos(:one)
  end

  test "should get index" do
    get bolsos_url
    assert_response :success
  end

  test "should get new" do
    get new_bolso_url
    assert_response :success
  end

  test "should create bolso" do
    assert_difference('Bolso.count') do
      post bolsos_url, params: { bolso: { cantidad: @bolso.cantidad, marca: @bolso.marca, modelo: @bolso.modelo, precio: @bolso.precio } }
    end

    assert_redirected_to bolso_url(Bolso.last)
  end

  test "should show bolso" do
    get bolso_url(@bolso)
    assert_response :success
  end

  test "should get edit" do
    get edit_bolso_url(@bolso)
    assert_response :success
  end

  test "should update bolso" do
    patch bolso_url(@bolso), params: { bolso: { cantidad: @bolso.cantidad, marca: @bolso.marca, modelo: @bolso.modelo, precio: @bolso.precio } }
    assert_redirected_to bolso_url(@bolso)
  end

  test "should destroy bolso" do
    assert_difference('Bolso.count', -1) do
      delete bolso_url(@bolso)
    end

    assert_redirected_to bolsos_url
  end
end
