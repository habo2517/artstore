class Admin::ProductsController < ApplicationController
<<<<<<< HEAD
layout "admin"

before_action :authenticate_user!
before_action :admin_required

  def index
     @products = Product.all
=======

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all
>>>>>>> 76fee7feedb4ccc32977c74e3afc34d55731f629
  end

  def new
    @product = Product.new
<<<<<<< HEAD
    @photo = @product.build_photo
=======
>>>>>>> 76fee7feedb4ccc32977c74e3afc34d55731f629
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

<<<<<<< HEAD
  def edit
    @product = Product.find(params[:id])

    if @product.photo.present?
      @photo = @product.photo
    else
      @photo = @product.build_photo
    end
  end

   def update
     @product = Product.find(params[:id])

     if @product.update(product_params)
       redirect_to admin_products_path
     else
       render :edit
     end
   end


  private

  def product_params
    #params.require(:product).permit(:title, :description, :quantity, :price)
    params.require(:product).permit(:title, :description, :quantity,:price,
    photo_attributes: [:image, :id])
=======
  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price)
>>>>>>> 76fee7feedb4ccc32977c74e3afc34d55731f629
  end
end
