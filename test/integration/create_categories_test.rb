require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  
  test "Get new category for and create category" do
    get new_category_path
    assert_template 'categories/new'
    assert_difference 'Category.count', 1 do
      # issues met rails 5 en code in lessen ifv tests => geven errors en failures
      # OPL : anders notatie van de tests nodig : info => https://stackdelivery.com/question/ror-testing-errors-expecting-categoriesnew-but-rendering-with
      post categories_path, params: { category: {name: "sports"} }
      follow_redirect!
    end
    assert_template 'categories/index'
    assert_match "sports", response.body
  end
  
  test "Invalid category submission results in falure" do
    get new_category_path
    assert_template 'categories/new'
    assert_no_difference 'Category.count' do
      # issues met rails 5 en code in lessen ifv tests => geven errors en failures
      # OPL : anders notatie van de tests nodig : info => https://stackdelivery.com/question/ror-testing-errors-expecting-categoriesnew-but-rendering-with
      post categories_path, params: { category: {name: " "} }
    end
    assert_template 'categories/new'
    assert_select 'h2.panel-title'    # <= uit page _errors.html.erb
    assert_select 'div.panel-body'    # <= uit page _errors.html.erb
  end
  
  
end