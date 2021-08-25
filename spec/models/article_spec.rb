require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
  @article = FactoryBot.build(:article)
  end

  describe '記事投稿' do
    context '記事投稿が上手く行く時' do
      it '全ての値が正しく入力されていれば登録できる' do
        expect(@article).to be_valid
      end
    end

    context '記事投稿が上手くいかない時' do
      it 'imageが空では登録できない' do
        @article.image = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Image can't be blank")
      end
      it 'titleが空では登録できない' do
        @article.title = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Title can't be blank")
      end
      it 'textが空では登録できない' do
        @article.text = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Text can't be blank")
      end
      it 'category_idが空では登録できない' do
        @article.category_id = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Category can't be blank")
      end
      it 'category_idが1の場合は登録できない' do
        @article.category_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("Category can't be blank")
      end
      it 'userが紐づいていないと登録できない' do
        @article.user = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("User must exist")
      end
    end
  end
end
