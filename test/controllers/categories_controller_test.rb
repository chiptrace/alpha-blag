require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  def setup
    @category = Category.create(name: "sports")
    @user = User.create(username: "John", email: "john@example.com", password: "password", admin: true)
    
  end
  
  test "Should get categories index" do
    get :index
    assert_response :success
  end
  
  test "Should get new" do
    session[:user_id] = @user.id
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
  
  test "Should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post :create, params: { category: { name: "Sports" } }
    end
    assert_redirected_to categories_path
  end

end
  
  
  
  