require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end
  
  describe 'Post新規投稿' do
    context '新規投稿がうまくいく時' do
      it 'titleとdescription、imageが存在すれば登録できる' do
        expect(@post).to be_valid
      end
    end

    context '新規投稿がうまくいかない時' do
      it 'titleが空だと登録できない' do
        @post.title = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end
      it 'descriptionが空だと登録できない' do
        @post.description = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Description can't be blank")
      end
      it 'imageが空だと登録できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
