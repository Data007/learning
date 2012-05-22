class Order

  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :products

end
