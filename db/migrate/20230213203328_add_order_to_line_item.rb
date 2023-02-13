class AddOrderToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :order, nul: true, foreign_key: true
    change_column :line_items, :cart_id, :integer, nul: true
  end
end
