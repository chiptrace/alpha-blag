require 'test_helper'
class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @category1 = Category.create(name: "Winter")
    @category2 = Category.create(name: "Summer")
  end
  
  # test "Should show categories listing" do
  #   get categories_path
  #   assert_redirected_to 'categories/index'       # OPL => https://stackoverflow.com/questions/27643614/rails-unit-test-assert-template-failure
  #   assert_select "a[href=?]", category_path(@category1), text: @category1.name
  #   assert_select "a[href=?]", category_path(@category2), text: @category2.name
  # end

end