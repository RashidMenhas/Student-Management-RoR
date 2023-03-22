class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects  
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    validates :first_name, :last_name, length: {minimum: 5, maximum: 10}
    
end
