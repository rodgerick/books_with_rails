class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :slug
  has_many :descriptions
end
