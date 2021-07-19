class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.All 
        render json: CategorySerializer.new(categories) 
    end
end
