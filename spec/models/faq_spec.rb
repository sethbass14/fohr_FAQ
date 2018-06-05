require 'rails_helper'
describe Faq do
  describe 'attributes' do
    it 'has a question' do
      expect(@faq1.question).to eq('How do I find influencers?')
    end

    it 'has an answer' do
      expect(@faq1.answer).to eq(@answer1)
    end
  end

  describe 'associations' do
    it 'belongs to a Section' do
      expect(@faq1.section).to eq(@section1)
    end
  end

end
