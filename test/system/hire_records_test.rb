require "application_system_test_case"

class HireRecordsTest < ApplicationSystemTestCase
  setup do
    @hire_record = hire_records(:one)
  end

  test "visiting the index" do
    visit hire_records_url
    assert_selector "h1", text: "Hire Records"
  end

  test "creating a Hire record" do
    visit hire_records_url
    click_on "New Hire Record"

    fill_in "Dc", with: @hire_record.dc
    fill_in "Emp name", with: @hire_record.emp_name
    fill_in "Emp role", with: @hire_record.emp_role
    fill_in "End date", with: @hire_record.end_date
    fill_in "Hours", with: @hire_record.hours
    fill_in "Rate", with: @hire_record.rate
    fill_in "Start date", with: @hire_record.start_date
    click_on "Create Hire record"

    assert_text "Hire record was successfully created"
    click_on "Back"
  end

  test "updating a Hire record" do
    visit hire_records_url
    click_on "Edit", match: :first

    fill_in "Dc", with: @hire_record.dc
    fill_in "Emp name", with: @hire_record.emp_name
    fill_in "Emp role", with: @hire_record.emp_role
    fill_in "End date", with: @hire_record.end_date
    fill_in "Hours", with: @hire_record.hours
    fill_in "Rate", with: @hire_record.rate
    fill_in "Start date", with: @hire_record.start_date
    click_on "Update Hire record"

    assert_text "Hire record was successfully updated"
    click_on "Back"
  end

  test "destroying a Hire record" do
    visit hire_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hire record was successfully destroyed"
  end
end
