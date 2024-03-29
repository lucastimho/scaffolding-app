class Post < ApplicationRecord
  attr_accessor :content, :name, :title

  validates :name,  :presence => true
  validates :title, :presence => true, :length => { :minimum => 5 }

  has_many :comments
end
