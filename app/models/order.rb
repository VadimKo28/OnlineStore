class Order < ApplicationRecord
  belongs_to :user

  enum pay_type: {
         Check: 0,
         Credit_card: 1,
         Purchase_order: 2,
       }

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys
  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
        item.cart_id = nil
        line_items << item
    end
  end
end
