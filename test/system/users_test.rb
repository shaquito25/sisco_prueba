require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Corre", with: @user.corre
    fill_in "Documento", with: @user.documento
    fill_in "Emision", with: @user.emision
    fill_in "Nombre", with: @user.nombre
    fill_in "Persona", with: @user.persona
    fill_in "Telefono principal", with: @user.telefono_principal
    fill_in "Telefono secundario", with: @user.telefono_secundario
    fill_in "Vencimiento", with: @user.vencimiento
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Corre", with: @user.corre
    fill_in "Documento", with: @user.documento
    fill_in "Emision", with: @user.emision
    fill_in "Nombre", with: @user.nombre
    fill_in "Persona", with: @user.persona
    fill_in "Telefono principal", with: @user.telefono_principal
    fill_in "Telefono secundario", with: @user.telefono_secundario
    fill_in "Vencimiento", with: @user.vencimiento
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
