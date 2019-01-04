require "application_system_test_case"

class BolsosTest < ApplicationSystemTestCase
  setup do
    @bolso = bolsos(:one)
  end

  test "visiting the index" do
    visit bolsos_url
    assert_selector "h1", text: "Bolsos"
  end

  test "creating a Bolso" do
    visit bolsos_url
    click_on "New Bolso"

    fill_in "Cantidad", with: @bolso.cantidad
    fill_in "Marca", with: @bolso.marca
    fill_in "Modelo", with: @bolso.modelo
    fill_in "Precio", with: @bolso.precio
    click_on "Create Bolso"

    assert_text "Bolso was successfully created"
    click_on "Back"
  end

  test "updating a Bolso" do
    visit bolsos_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @bolso.cantidad
    fill_in "Marca", with: @bolso.marca
    fill_in "Modelo", with: @bolso.modelo
    fill_in "Precio", with: @bolso.precio
    click_on "Update Bolso"

    assert_text "Bolso was successfully updated"
    click_on "Back"
  end

  test "destroying a Bolso" do
    visit bolsos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bolso was successfully destroyed"
  end
end
