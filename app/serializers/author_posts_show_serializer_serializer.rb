class AuthorPostsShowSerializerSerializer < ActiveModel::Serializer
  attributes :title, :shortened_content
  belongs_to :author
  has_many   :tags

  def shortened_content
    self.object.content[0..39] + "..."
  end

end
