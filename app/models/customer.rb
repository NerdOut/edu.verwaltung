class Customer < ApplicationRecord
  has_many :orders
  def name_with_initial
    "#{sortname}"
  end
end
