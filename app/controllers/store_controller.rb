class StoreController < ApplicationController
  def index
    @products = Product.order_by(:title)
  end
end
