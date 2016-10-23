require 'test_helper'

class BiltisControllerTest < ActionController::TestCase
  setup do
    @bilti = biltis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biltis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bilti" do
    assert_difference('Bilti.count') do
      post :create, bilti: { actual_weight: @bilti.actual_weight, bar_code: @bilti.bar_code, booking_date: @bilti.booking_date, changed_weight: @bilti.changed_weight, client_id: @bilti.client_id, company_id: @bilti.company_id, consignee: @bilti.consignee, consigner: @bilti.consigner, frieght: @bilti.frieght, goods: @bilti.goods, goods_value: @bilti.goods_value, h_0: @bilti.h_0, invoice_no: @bilti.invoice_no, l_r_no: @bilti.l_r_no, office: @bilti.office, tin_no: @bilti.tin_no, total: @bilti.total, transport_mode: @bilti.transport_mode }
    end

    assert_redirected_to bilti_path(assigns(:bilti))
  end

  test "should show bilti" do
    get :show, id: @bilti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bilti
    assert_response :success
  end

  test "should update bilti" do
    patch :update, id: @bilti, bilti: { actual_weight: @bilti.actual_weight, bar_code: @bilti.bar_code, booking_date: @bilti.booking_date, changed_weight: @bilti.changed_weight, client_id: @bilti.client_id, company_id: @bilti.company_id, consignee: @bilti.consignee, consigner: @bilti.consigner, frieght: @bilti.frieght, goods: @bilti.goods, goods_value: @bilti.goods_value, h_0: @bilti.h_0, invoice_no: @bilti.invoice_no, l_r_no: @bilti.l_r_no, office: @bilti.office, tin_no: @bilti.tin_no, total: @bilti.total, transport_mode: @bilti.transport_mode }
    assert_redirected_to bilti_path(assigns(:bilti))
  end

  test "should destroy bilti" do
    assert_difference('Bilti.count', -1) do
      delete :destroy, id: @bilti
    end

    assert_redirected_to biltis_path
  end
end
