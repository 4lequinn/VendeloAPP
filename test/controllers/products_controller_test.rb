require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path

        assert_response :success  
        assert_select '.product', 2
    end 

    test 'render a detail product page' do
        get product_path(products(:ps4)) # products(:ps4).id funciona así también
        assert_response :success
        assert_select '.title', 'PS4 FAT'
        assert_select '.description', 'PS4 En buen estado'
        assert_select '.price', '1000' 
    end

    test 'render a new product form' do
        get new_product_path
        assert_response :success
        assert_select 'form'
    end
end