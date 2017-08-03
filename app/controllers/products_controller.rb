class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  private

  def show
    @product = Product.find params[:id]
  end

end
