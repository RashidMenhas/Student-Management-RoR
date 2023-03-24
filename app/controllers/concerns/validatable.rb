module Validatable
    extend ActiveSupport::Concern

    included do
        validates :name, presence: true, uniqueness: true
        validates :description, presence: true, length: {minimum: 10, maximun: 100 }
    end

end