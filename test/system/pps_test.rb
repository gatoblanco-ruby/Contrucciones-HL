require "application_system_test_case"

class PpsTest < ApplicationSystemTestCase
  setup do
    @pp = pps(:one)
  end

  test "visiting the index" do
    visit pps_url
    assert_selector "h1", text: "Pps"
  end

  test "creating a Pp" do
    visit pps_url
    click_on "New Pp"

    fill_in "Horas", with: @pp.horas
    fill_in "L", with: @pp.l
    fill_in "Worker", with: @pp.worker_id
    click_on "Create Pp"

    assert_text "Pp was successfully created"
    click_on "Back"
  end

  test "updating a Pp" do
    visit pps_url
    click_on "Edit", match: :first

    fill_in "Horas", with: @pp.horas
    fill_in "L", with: @pp.l
    fill_in "Worker", with: @pp.worker_id
    click_on "Update Pp"

    assert_text "Pp was successfully updated"
    click_on "Back"
  end

  test "destroying a Pp" do
    visit pps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pp was successfully destroyed"
  end
end
