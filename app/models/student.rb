# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  study_type :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ApplicationRecord

  has_many :student_assignment, dependent: :destroy

  extend Enumerize

  enumerize :study_type, in: { FULL_TIME: 1, PART_TIME: 2 }, default: :FULL_TIME, scope: true, predicates: true

end
