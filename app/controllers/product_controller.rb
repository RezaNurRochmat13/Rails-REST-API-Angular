class ProductController < ApplicationController
  
#  Function index
  def index
        product = Product.all
        render json: {data: product}
  end

# Function New Product
  def create
		@product = Product.new(name: params[:name], description: params[:description])
		if @product.save
			render json: @product
		else
			render json: {error: 'Process failed'}
			
		end
  end

#  Function Update Product
  def update
        @product = Product.find(params[:id])
        if @product.update_attribute(:name, params[:name])
            render json: @product
        else
            render json: {error: 'process not completed'}
        end
    end

# Function Delete Product
  def destroy
        @product = Product.find(params[:id])
        if @product.destroy
            render json: {status: 'successful'}
        else
            render json: {error: 'process not completed'}
        end
    end
end
