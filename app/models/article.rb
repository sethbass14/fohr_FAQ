class Article < ApplicationRecord
  belongs_to :section
  before_create :save_search_cache

  def make_search_cache
    title.downcase + ' ' + content.downcase
  end

  def save_search_cache
    self.search_cache = make_search_cache
  end

end
