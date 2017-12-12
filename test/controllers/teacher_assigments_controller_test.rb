require 'test_helper'

class TeacherAssigmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_assigment = teacher_assigments(:one)
  end

  test "should get index" do
    get teacher_assigments_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_assigment_url
    assert_response :success
  end

  test "should create teacher_assigment" do
    assert_difference('TeacherAssigment.count') do
      post teacher_assigments_url, params: { teacher_assigment: { course_id: @teacher_assigment.course_id, teacher_id: @teacher_assigment.teacher_id } }
    end

    assert_redirected_to teacher_assigment_url(TeacherAssigment.last)
  end

  test "should show teacher_assigment" do
    get teacher_assigment_url(@teacher_assigment)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_assigment_url(@teacher_assigment)
    assert_response :success
  end

  test "should update teacher_assigment" do
    patch teacher_assigment_url(@teacher_assigment), params: { teacher_assigment: { course_id: @teacher_assigment.course_id, teacher_id: @teacher_assigment.teacher_id } }
    assert_redirected_to teacher_assigment_url(@teacher_assigment)
  end

  test "should destroy teacher_assigment" do
    assert_difference('TeacherAssigment.count', -1) do
      delete teacher_assigment_url(@teacher_assigment)
    end

    assert_redirected_to teacher_assigments_url
  end
end
