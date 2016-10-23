class CreateBiltis < ActiveRecord::Migration
  def change
    create_table :biltis do |t|
      t.string :office
      t.string :h_0
      t.string :consigner
      t.string :consignee
      t.integer :l_r_no
      t.string :bar_code
      t.datetime :booking_date
      t.string :invoice_no
      t.string :goods
      t.boolean :frieght
      t.float :actual_weight
      t.float :changed_weight
      t.float :goods_value
      t.integer :transport_mode
      t.string :tin_no
      t.float :total
      t.references :client, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
