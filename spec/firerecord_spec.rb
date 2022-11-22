# frozen_string_literal: true

class Variant < FireRecord
  attribute(:size, String, null: false)
  attribute(:color, String, null: false)
  attribute(:available, Integer, null: false)

  belongs_to(:product)
  belongs_to(:shop)
end

class Product < FireRecord
  attribute(:name, String, null: false)
  attribute(:price, Float, null: false)
  attribute(:available, Boolean, null: false, default: true)

  has_many(:variants)
  belongs_to(:shop)
end

RSpec.describe Firerecord do
  let(:product) do
    Product.create(
      name: SecureRandom.uuid,
      price: (20..1000).to_a.sample,
      available: false,
      variants: [
        {
          size: "XS",
          color: 'blue',
          available: 2
        },
        {
          size: "S",
          color: 'blue',
          available: 1
        },
        {
          size: "M",
          color: 'blue',
          available: 10
        }
      ]
    )
  end
end
