require 'rails_helper'
describe Section do
  describe 'attributes' do
    it 'has a title' do
      expect(@section1.title).to eq('Getting Started')
    end
    it 'has an overview' do
      expect(@section1.overview).to eq(@overview1)
    end
  end

  describe 'associations' do
    it 'has many FAQ\'s' do
      expect(@section1.faqs).to eq([@faq1])
    end
    it 'has many articles' do
      expect(@section1.articles).to eq([@article1])
    end
  end

end
