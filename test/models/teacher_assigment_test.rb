# == Schema Information
#
# Table name: teacher_assigments
#
#  id         :integer          not null, primary key
#  teacher_id :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teacher_assigments_on_course_id   (course_id)
#  index_teacher_assigments_on_teacher_id  (teacher_id)
#

require 'test_helper'

class TeacherAssigmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
