require 'test_helper'

class ClassAssignmentsControllerTest < ActionController::TestCase
  setup do
    @class_assignment = class_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_assignment" do
    assert_difference('ClassAssignment.count') do
      post :create, class_assignment: { assigned: @class_assignment.assigned, description: @class_assignment.description, due: @class_assignment.due, title: @class_assignment.title }
    end

    assert_redirected_to class_assignment_path(assigns(:class_assignment))
  end

  test "should show class_assignment" do
    get :show, id: @class_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_assignment
    assert_response :success
  end

  test "should update class_assignment" do
    patch :update, id: @class_assignment, class_assignment: { assigned: @class_assignment.assigned, description: @class_assignment.description, due: @class_assignment.due, title: @class_assignment.title }
    assert_redirected_to class_assignment_path(assigns(:class_assignment))
  end

  test "should destroy class_assignment" do
    assert_difference('ClassAssignment.count', -1) do
      delete :destroy, id: @class_assignment
    end

    assert_redirected_to class_assignments_path
  end
end
