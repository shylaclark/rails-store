# == Schema Information
# Schema version: 20160721192221
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :text
#  email      :string
#  pay_type   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy

  PAYMENT_TYPES = [ "Credit card", "PayPal"]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_order_items_from_cart(cart)
    cart.order_items.each do |item|
      line.cart_id = nil
      line_items << item
    end
  end
end
