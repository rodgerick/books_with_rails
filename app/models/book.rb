class Book < ApplicationRecord
  has_many :descriptions

  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end

end
