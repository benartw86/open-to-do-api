class Item < ActiveRecord::Base
  belongs_to :list
  
  validates :body, presence: true
  validates :body, length: { minimum: 5 }, presence: true
end
