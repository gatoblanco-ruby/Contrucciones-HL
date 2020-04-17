require 'test_helper'

class PpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pp = pps(:one)
  end

  test "should get index" do
    get pps_url
    assert_response :success
  end

  test "should get new" do
    get new_pp_url
    assert_response :success
  end

  test "should create pp" do
    assert_difference('Pp.count') do
      post pps_url, params: { pp: { horas: @pp.horas, l: @pp.l, worker_id: @pp.worker_id } }
    end

    assert_redirected_to pp_url(Pp.last)
  end

  test "should show pp" do
    get pp_url(@pp)
    assert_response :success
  end

  test "should get edit" do
    get edit_pp_url(@pp)
    assert_response :success
  end

  test "should update pp" do
    patch pp_url(@pp), params: { pp: { horas: @pp.horas, l: @pp.l, worker_id: @pp.worker_id } }
    assert_redirected_to pp_url(@pp)
  end

  test "should destroy pp" do
    assert_difference('Pp.count', -1) do
      delete pp_url(@pp)
    end

    assert_redirected_to pps_url
  end
end
