class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :code
      t.integer :language
      t.integer :study_type

      t.timestamps
    end
  end
end
