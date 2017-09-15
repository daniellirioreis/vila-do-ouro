require 'test_helper'

class DwellersControllerTest < ActionController::TestCase
  setup do
    @dweller = dwellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dwellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dweller" do
    assert_difference('Dweller.count') do
      post :create, dweller: { cpf: @dweller.cpf, email: @dweller.email, name: @dweller.name, phone: @dweller.phone }
    end

    assert_redirected_to dweller_path(assigns(:dweller))
  end

  test "should show dweller" do
    get :show, id: @dweller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dweller
    assert_response :success
  end

  test "should update dweller" do
    patch :update, id: @dweller, dweller: { cpf: @dweller.cpf, email: @dweller.email, name: @dweller.name, phone: @dweller.phone }
    assert_redirected_to dweller_path(assigns(:dweller))
  end

  test "should destroy dweller" do
    assert_difference('Dweller.count', -1) do
      delete :destroy, id: @dweller
    end

    assert_redirected_to dwellers_path
  end
end
