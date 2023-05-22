class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validate :validate_quantity
  private

  def validate_quantity
    if quantity.present? && quantity > product.quantity
      errors.add(:quantity, "cannot be greater than available quantity")
    end
  end
end
