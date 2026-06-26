class User < ApplicationRecord
  has_secure_password
  has_one :cart, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  after_create :create_cart

  private

  def create_cart
    Cart.create(user: self)
  end
end
