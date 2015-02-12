require 'test_helper'

class CompanycontactsControllerTest < ActionController::TestCase
  setup do
    @companycontact = companycontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companycontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companycontact" do
    assert_difference('Companycontact.count') do
      post :create, companycontact: { body: @companycontact.body, description: @companycontact.description, image: @companycontact.image, keywords: @companycontact.keywords, punktmenu: @companycontact.punktmenu, slug: @companycontact.slug, title: @companycontact.title }
    end

    assert_redirected_to companycontact_path(assigns(:companycontact))
  end

  test "should show companycontact" do
    get :show, id: @companycontact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companycontact
    assert_response :success
  end

  test "should update companycontact" do
    patch :update, id: @companycontact, companycontact: { body: @companycontact.body, description: @companycontact.description, image: @companycontact.image, keywords: @companycontact.keywords, punktmenu: @companycontact.punktmenu, slug: @companycontact.slug, title: @companycontact.title }
    assert_redirected_to companycontact_path(assigns(:companycontact))
  end

  test "should destroy companycontact" do
    assert_difference('Companycontact.count', -1) do
      delete :destroy, id: @companycontact
    end

    assert_redirected_to companycontacts_path
  end
end
