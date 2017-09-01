require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  def setup
    @category = Category.create(name: "sports")
  end
  
  test "Should get categories index" do
    get :index
    assert_response :success
  end
  
  test "Should get new" do
    get :new
    assert_response :success
  end
  
  # deze test is uitgezet ... bij rails 5 geeft hij een fout vanwege de hash controle.
  # kan niet vinden om het op te lossen.
  # OPL => http://blog.bigbinary.com/2016/04/19/changes-to-test-controllers-in-rails-5.html
  # ------------------------------------
    test "Should get show" do
      get :show, params: { id: @category.id }
      assert_response :success
    end
  
end
  
  
  
  