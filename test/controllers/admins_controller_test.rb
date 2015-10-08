require 'test_helper'

class AdminsControllerTest < ActionController::TestCase


  # Setup
  def setup
    @admin = Admin.new(name: "tseting", email: "test@example.com", password: "12345678", password_confirmation: "12345678")
    @admin2 = Admin.new(name: "aaa", email: "test@test.com", password: "12345678", password_confirmation: "12345678")
  end

  test "should show admin" do
    @admin.save
    admin_login(@admin)
    get :show, id: @admin
    assert_response :success
  end
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end


=begin
 test "redirect to admin_home after admin creation" do
    admin_login(@admin2)
    post :create, admin: { name: @admin.name, email: @admin.email, password: @admin.password, password_confirmation: @admin.password_confirmation }
    @admin.save
    assert_redirected_to admin_path(@admin)
  end
=end



  test "should show creation page if admin is not successfully created" do
    post :create, admin: { name: @admin.name, email: @admin.email, password: @admin.password, password_confirmation: "1234567890" }
    assert_template :new
  end



  test "should redirect to home when not logged_in" do
    @admin.save
    get :edit, id: @admin
    assert_redirected_to login_admin_path
  end

  test "redirect update when not logged in" do
    @admin.save
    patch :update, id: @admin, admin: { name: @admin.name, email: @admin.email, password: @admin.password, password_confirmation: @admin.password_confirmation }
    assert_redirected_to login_admin_path
  end

  test "should update constraints are adhered" do
    @admin.save
    admin_login(@admin)
    get :edit, id: @admin
    patch :update, id: @admin, admin: { name: "new name", email: @admin.email, password: @admin.password, password_confirmation: @admin.password_confirmation }
    assert_redirected_to @admin
  end

  test "should not update when constraints are violated" do
    @admin.save
    admin_login(@admin)
    get :edit, id: @admin
    patch :update, id: @admin, admin: { name: "", email: "jsfdsjhsj", password: @admin.password, password_confirmation: @admin.password_confirmation }
    assert_template :edit
  end

  test "should create admin" do
    assert_difference('Admin.count') do
      post :create, admin: {email: @admin.email, name: @admin.name, password: @admin.password, password_confirmation: @admin.password_confirmation}
    end

    assert_redirected_to admin_path(assigns(:admin))
  end

  test "should edit" do
        @admin.save
        admin_login(@admin)
        get :edit, id: @admin
        assert_response :success
      end


  test "should destroy admin" do
        @admin.save
        assert_difference('Admin.count', -1) do
          delete :destroy, id: @admin
        end
        assert_redirected_to admins_path
      end
end
