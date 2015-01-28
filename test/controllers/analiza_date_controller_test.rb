require 'test_helper'

class AnalizaDateControllerTest < ActionController::TestCase
  test "should get preluare_date1" do
    get :preluare_date1
    assert_response :success
  end

  test "should get preluare_date2" do
    get :preluare_date2
    assert_response :success
  end

  test "should get afisare_analiza" do
    get :afisare_analiza
    assert_response :success
  end

end
