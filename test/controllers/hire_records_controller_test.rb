require 'test_helper'

class HireRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hire_record = hire_records(:one)
  end

  test "should get index" do
    get hire_records_url
    assert_response :success
  end

  test "should get new" do
    get new_hire_record_url
    assert_response :success
  end

  test "should create hire_record" do
    assert_difference('HireRecord.count') do
      post hire_records_url, params: { hire_record: { dc: @hire_record.dc, emp_name: @hire_record.emp_name, emp_role: @hire_record.emp_role, end_date: @hire_record.end_date, hours: @hire_record.hours, rate: @hire_record.rate, start_date: @hire_record.start_date } }
    end

    assert_redirected_to hire_record_url(HireRecord.last)
  end

  test "should show hire_record" do
    get hire_record_url(@hire_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_hire_record_url(@hire_record)
    assert_response :success
  end

  test "should update hire_record" do
    patch hire_record_url(@hire_record), params: { hire_record: { dc: @hire_record.dc, emp_name: @hire_record.emp_name, emp_role: @hire_record.emp_role, end_date: @hire_record.end_date, hours: @hire_record.hours, rate: @hire_record.rate, start_date: @hire_record.start_date } }
    assert_redirected_to hire_record_url(@hire_record)
  end

  test "should destroy hire_record" do
    assert_difference('HireRecord.count', -1) do
      delete hire_record_url(@hire_record)
    end

    assert_redirected_to hire_records_url
  end
end
