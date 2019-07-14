class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @reviews = Review.where(product_id: params[:id])
  end

  def get_user(user_id)
    User.find_by(id: user_id)
  end
  helper_method :get_user  

  def get_average(product)
    @product = product
    @reviewAvg = Review.where(product_id: @product.id)
    @reviewAvg.average(:rating)
  end
  helper_method :get_average

end
