class Entry < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  has_and_belongs_to_many :categories
end
