# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  code        :string
#  building_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_rooms_on_building_id  (building_id)
#

class Room < ApplicationRecord
  belongs_to :building
  has_many :lesson, dependent: :destroy
  validates :title, presence: true
end
