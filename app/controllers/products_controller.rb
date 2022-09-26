class ProductsController < ApplicationController
    def index
        # Variable de instancia, se puede leer desde nuestra vista
        @products = Product.all
    end
end