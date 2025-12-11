class Tag < ApplicationRecord
  has_many :post_tags
  has_many :posts, through: :post_tags

  # def posts
  #   post_tags.map do |post_tag|
  #     post_tag.post
  #   end
  # end

end
