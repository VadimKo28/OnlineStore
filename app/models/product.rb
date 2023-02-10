class Product < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_references_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {
                          with: %r{\.(gif|jpg|png)\Z}i,
                          message: "URL должен указывать на изображение формата GIF, JPG или PNG.",
                        }

  private

  def ensure_not_references_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, "Присутствует товарная позиция данного товара")
      return false
    end
  end
end
