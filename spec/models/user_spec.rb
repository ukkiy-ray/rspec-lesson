require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '0a0a0a', password_confirmation: '0a0a0a', birthday: '2000-01-01')
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      user = User.new(nickname: 'test01', email: '', password: '0a0a0a', password_confirmation: '0a0a0a', birthday: '2000-01-01')
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
