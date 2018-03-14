class CategoryController < ApplicationController

    def index
        category = Category.all
        render json: {data: category}
    end

    def create
        @category = Category.new(category_name: params[:category_name],description: params[:description])

        if @category.save
            render json: @category
        else
            render json: {error: 'Insert data failed'}
        end
    end
end
