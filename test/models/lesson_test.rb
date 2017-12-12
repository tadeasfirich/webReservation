# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  start_at   :datetime
#  end_at     :datetime
#  durration  :integer
#  room_id    :integer
#  teacher_id :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_lessons_on_course_id   (course_id)
#  index_lessons_on_room_id     (room_id)
#  index_lessons_on_teacher_id  (teacher_id)
#

require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
