module Validation
    extend ActiveSupport::Concern

    included do 
        validates :first_name, :last_name, :email, presence: true
        validates :email, uniqueness: true
        validates :first_name, :last_name, length: {minimum: 5, maximum: 10}    
    end
end