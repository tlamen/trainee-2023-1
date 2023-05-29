require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'testing standard factory' do
    it 'should be valid' do
      category = build(:category)
      expect(category).to be_valid
    end
  end

  context 'testing name' do
    it 'when name is valid' do
      category = build(:category, name: 'nome valido')
      expect(category).to be_valid
    end

    it 'when name is empty' do
      category = build(:category, name: '')
      expect(category).to be_invalid
    end

    it 'when name already exists' do
      category1 = create(:category, name: 'paulo')
      category2 = build(:category, name: 'paulo')
      expect(category2).to be_invalid
    end
  end
end
