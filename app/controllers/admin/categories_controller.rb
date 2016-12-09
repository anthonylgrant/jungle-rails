class Admin::CategoriesController < ApplicationController

  admin_authentication

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
    # p "Printing @category: ", @category
  end


  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

end
