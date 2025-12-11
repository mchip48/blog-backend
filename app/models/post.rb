class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  # def tags
  #   post_tags.map do |post_tag|
  #     post_tag.tag
  #   end
  # end

end
