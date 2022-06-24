require "application_system_test_case"

class InvoicedetailsTest < ApplicationSystemTestCase
  setup do
    @invoicedetail = invoicedetails(:one)
  end

  test "visiting the index" do
    visit invoicedetails_url
    assert_selector "h1", text: "Invoicedetails"
  end

  test "creating a Invoicedetail" do
    visit invoicedetails_url
    click_on "New Invoicedetail"

    fill_in "Billing address", with: @invoicedetail.billing_address
    fill_in "Invoice date", with: @invoicedetail.invoice_date
    fill_in "Invoice number", with: @invoicedetail.invoice_number
    fill_in "Shipping address", with: @invoicedetail.shipping_address
    fill_in "Total amount", with: @invoicedetail.total_amount
    click_on "Create Invoicedetail"

    assert_text "Invoicedetail was successfully created"
    click_on "Back"
  end

  test "updating a Invoicedetail" do
    visit invoicedetails_url
    click_on "Edit", match: :first

    fill_in "Billing address", with: @invoicedetail.billing_address
    fill_in "Invoice date", with: @invoicedetail.invoice_date
    fill_in "Invoice number", with: @invoicedetail.invoice_number
    fill_in "Shipping address", with: @invoicedetail.shipping_address
    fill_in "Total amount", with: @invoicedetail.total_amount
    click_on "Update Invoicedetail"

    assert_text "Invoicedetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoicedetail" do
    visit invoicedetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoicedetail was successfully destroyed"
  end
end
