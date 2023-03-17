class CreateCoursesStudentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :courses, :students
  end
end
