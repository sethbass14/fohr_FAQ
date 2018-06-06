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

  describe 'validations' do
    before(:each) do
      @fake_section = Section.new(title: 'Getting Started', overview: 'Here is something')
      @no_title_section = Section.new(title: '', overview: 'Here is something else')
    end
    it 'must have a title present' do
      expect(@no_title_section.valid?).to eq(false)
    end
    it 'must have unique title' do
      expect(@fake_section.valid?).to eq(false)
    end
  end

  describe 'instance methods' do
    it 'has a slugify method' do
      expect(@section1.slugify).to eq('getting_started')
    end
  end

  describe 'life cycle methods' do
    it 'saves slug upon creation' do
      expect(@section1.slug).to eq(@section1.slugify)
    end
  end

end
