class CreateInvoicedetails < ActiveRecord::Migration[6.1]
  def change
    create_table :invoicedetails do |t|
      t.integer :invoice_number
      t.integer :invoice_date
      t.string :shipping_address
      t.string :billing_address
      t.integer :total_amount

      t.timestamps
    end
  end
end
