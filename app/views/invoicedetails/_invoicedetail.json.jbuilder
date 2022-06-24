json.extract! invoicedetail, :id, :invoice_number, :invoice_date, :shipping_address, :billing_address, :total_amount, :created_at, :updated_at
json.url invoicedetail_url(invoicedetail, format: :json)
