class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  def formatted_price
    new_price = price_in_cents.to_f / 100
    sprintf("%.2f", new_price)
  end
end