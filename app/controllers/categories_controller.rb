class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
 # begin private
 # def category_params
 #   params.require(:name).permit(:name, :category_ids => [])
 # end
 # end  
end