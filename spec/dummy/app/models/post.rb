class Post < ActiveRecord::Base
  belongs_to :author

  validates :title, :description, :published_at, presence: true
end
