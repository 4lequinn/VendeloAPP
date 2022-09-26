class ProductsController < ApplicationController
    def index
        # Variable de instancia, se puede leer desde nuestra vista
        @products = Product.all
    end

    def show
        # Recibimos el id enviado por parámetro
        @product = Product.find(params[:id])
    end

    def new 
        @product = Product.new
    end
end