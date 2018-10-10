class Student < ApplicationRecord
    has_and_belongs_to_many :sections

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :name, length: {minimum: 2}
    validates :student_id, format: {with: /\A\d+\z/, message: "Positive Integers Only!"}
    validates :student_id, length: {minimum: 2}

end
