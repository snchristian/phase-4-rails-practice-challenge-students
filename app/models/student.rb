class Student < ApplicationRecord
    belongs_to :instructor
    validates :name, presence: true
    validate :must_be_18


    def must_be_18
         if age <= 18
            errors.add(:student, "sorry must be 18 or older")
         end
    end
end
