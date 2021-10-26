class Task < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :list

  validates :text, presence: true
  belongs_to :user
end
