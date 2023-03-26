class Student < ApplicationRecord
    paginates_per 10
    has_one_attached :profile_image
    include Validation
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects  
  
end
