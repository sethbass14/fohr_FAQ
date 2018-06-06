class Section < ApplicationRecord
  has_many :faqs
  has_many :articles
end
