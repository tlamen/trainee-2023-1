require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'check factory' do 
    it 'when the standard factory is ok' do
      post = build(:post)
      expect(post).to be_valid
    end
  end

  context 'testing title' do
    it 'when title is valid' do
      post = build(:post, title: 'titulo valido')
      expect(post).to be_valid 
    end

    it 'when title is empty' do
      post = Post.new(title:'')
      expect(post).to be_invalid 
    end
  end

  context 'texting user_id' do
    it 'must be greater than 0' do
      post = build(:post, username_id: 0)
      expect(post).to be_invalid
    end
  end
end
