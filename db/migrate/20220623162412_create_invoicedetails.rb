class CreateInvoicedetails < ActiveRecord::Migration[6.1]
  def change
    create_table :invoicedetails do |t|
      t.integer :invoice_number
      t.date :invoice_date
      t.string :shipping_address
      t.string :billing_address
      t.float :total_amount

      t.timestamps
    end
  end
end
