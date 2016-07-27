# == Schema Information
# Schema version: 20160721192221
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  price       :decimal(6, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  before_destroy :check_for_references

  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Must be a URL for gif, jpg or png image'
  }

  def self.latest
    Product.order(:updated_at).last
  end

  private

  # ensure there are no order items referencing this product
  def check_for_references
    if order_items.empty?
      return true
    else
      errors.add(:base, 'Order items present.')
      return false
    end
  end
end
