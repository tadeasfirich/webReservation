require 'test_helper'

class StudentAssigmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_assigment = student_assigments(:one)
  end

  test "should get index" do
    get student_assigments_url
    assert_response :success
  end

  test "should get new" do
    get new_student_assigment_url
    assert_response :success
  end

  test "should create student_assigment" do
    assert_difference('StudentAssigment.count') do
      post student_assigments_url, params: { student_assigment: { course_id: @student_assigment.course_id, student_id: @student_assigment.student_id } }
    end

    assert_redirected_to student_assigment_url(StudentAssigment.last)
  end

  test "should show student_assigment" do
    get student_assigment_url(@student_assigment)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_assigment_url(@student_assigment)
    assert_response :success
  end

  test "should update student_assigment" do
    patch student_assigment_url(@student_assigment), params: { student_assigment: { course_id: @student_assigment.course_id, student_id: @student_assigment.student_id } }
    assert_redirected_to student_assigment_url(@student_assigment)
  end

  test "should destroy student_assigment" do
    assert_difference('StudentAssigment.count', -1) do
      delete student_assigment_url(@student_assigment)
    end

    assert_redirected_to student_assigments_url
  end
end
