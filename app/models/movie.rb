class Movie < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :reviews
end
