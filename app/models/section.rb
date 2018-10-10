class Section < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students

  validates :number, presence: true
  validates :number, format: {with: /\A\d+\z/, message: "Positive Integers Only!"}
  validates :room, format: {with: /\A\d+\z/, message: "Positive Integers Only!"}
end
