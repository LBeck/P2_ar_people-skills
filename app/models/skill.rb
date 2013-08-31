class Skill < ActiveRecord::Base
  belongs_to :user
  validates :name, uniqueness: true
end
