class AuthorPostShowSerializerSerializer < ActiveModel::Serializer
  attributes :title, :shortened_content
  has_many   :tags


def shortened_content
  self.object.content[0..39] + "..."
end

end
