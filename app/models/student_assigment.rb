# == Schema Information
#
# Table name: student_assigments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_student_assigments_on_course_id   (course_id)
#  index_student_assigments_on_student_id  (student_id)
#

class StudentAssigment < ApplicationRecord
  belongs_to :course
  belongs_to :student
end
