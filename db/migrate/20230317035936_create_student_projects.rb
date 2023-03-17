class CreateStudentProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :student_projects do |t|
      t.references :student, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
