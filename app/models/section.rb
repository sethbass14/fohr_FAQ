class Section < ApplicationRecord
  has_many :faqs
  has_many :articles

  validates :title, uniqueness: true, presence: true

  before_create :save_slug

  def slugify
    title.downcase.strip.gsub(' ', '_').gsub(/[^\w-]/, '')
  end

  def save_slug
    self.slug = slugify
  end

end
