class Student < ApplicationRecord
  validates :firstname, presence: true, length: {maximum: 32}, allow_blank: false
  validates :lastname, presence: true, length: {maximum: 32}, allow_blank: false
  validates :age, length: {maximum: 32}, allow_blank: true
  validates :address, length: {maximum: 32}, allow_blank: true
  validates :phone, length: {maximum: 10}, allow_blank: true
  validates :status, presence: true
end
