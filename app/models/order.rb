class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

validates :qty, :subtotal, :total, presence: true
validates :qty, numericality: {only_integer: true}
validates :tax, :subtotal, :total, presence: true
end
