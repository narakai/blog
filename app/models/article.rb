class Article < ActiveRecord::Base
	# 一篇文章有多个评论, 删除一篇文章，也要删除文章中的评论
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
end
