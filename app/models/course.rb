class Course < ApplicationRecord
  validates :name, presence: true, length: {maximum: 32}, allow_blank: false
  validates :code, length: {maximum: 32}, allow_blank: true
  validates :description, length: {maximum: 32}, allow_blank: true
  validates :number_sem, length: {maximum: 32}, allow_blank: true
  validates :status, presence: true
end
