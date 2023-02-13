class Order < ApplicationRecord
  enum pay_type: {
         Check: 0,
         Credit_card: 1,
         Purchase_order: 2,
       }
end
