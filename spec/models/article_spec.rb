require 'rails_helper'

describe Article do
  describe 'attributes' do
    it 'has a title' do
      expect(@article1.title).to eq(@article_title1)
    end

    it 'has content' do
      expect(@article1.content).to eq(@content1)
    end
  end

  describe 'associations' do
    it 'belongs to a section' do
      expect(@article1.section).to eq(@section1)
    end
  end

  describe 'instance methods' do
    it 'has a make_search_cache method' do
      expect(@article1.make_search_cache).to eq(@article1.title.downcase + ' ' + @article1.content.downcase)
    end
  end

  describe 'life cycle methods' do
    it 'saves a string of title and overview as the search_cache attribute' do
      expect(@article1.search_cache).to eq(@article1.make_search_cache)
    end
  end


end
