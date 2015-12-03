class Order < ActiveRecord::Base
  belongs_to :user
  
  has_many :carted_products
  has_many :products, through: :carted_products

validates :qty, :subtotal, :total, presence: true
validates :qty, numericality: {only_integer: true}
validates :tax, :subtotal, :total, presence: true




end
