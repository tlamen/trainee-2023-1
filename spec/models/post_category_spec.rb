require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  context 'testing standard factory' do
    it 'should be valid' do
      category_post = build(:post_category)
      expect(category_post).to be_valid
    end
  end

  context 'when theres no category' do
    it 'should be invalid' do
      category_post = build(:post_category, category: nil)
      expect(category_post).to be_invalid
    end
  end
end
