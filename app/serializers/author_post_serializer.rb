class AuthorPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_content
  belongs_to :author
  has_many :tags, through: :post_tags




def short_content
  object.content[0,40]+"..."
end 
end
