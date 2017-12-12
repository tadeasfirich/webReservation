# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  language   :integer
#  study_type :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ApplicationRecord

  has_many :student_assignment, dependent: :destroy

  has_many :teacher_assignment, dependent: :destroy

  has_many :lesson, dependent: :destroy

  extend Enumerize

  enumerize :language, in: { CZECH: 1, ENGLISH: 2 }, default: :CZECH, scope: true, predicates: true
  enumerize :study_type, in: { FULL_TIME: 1, PART_TIME: 2 }, default: :FULL_TIME, scope: true, predicates: true

  validates :title, presence: true
end
