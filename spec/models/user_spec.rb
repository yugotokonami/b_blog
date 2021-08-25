require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録が上手く行く時' do
      it '全ての値が正しく入力されていれば登録できる' do
      end
      it 'passwordは6文字以上であれば登録できる' do
      end
    end

    context '新規登録が上手くいかない時' do
      it 'nameが空では登録できない' do
      end
      it 'emailが空では登録できない' do
      end
      it 'passwordが空では登録できない' do
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
      end
      it '重複したemailが存在する場合登録できない' do
      end
      it 'passwordが5文字以下では登録できない' do
      end
    end
  end
end
