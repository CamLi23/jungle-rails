class Admin::CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :products], notice: 'Category created!'
    else
      render :new
    end
  end


  def category_params
    params.require(:category).permit(:name)
  end



end