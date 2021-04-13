require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.create(:post)
  end

  context '投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      # 新規投稿ページへのリンクがあることを確認する
      # 投稿ページに移動する
      # フォームに情報を入力する
      # 送信するとPostモデルのカウントが1上がることを確認する
      # トップページに遷移することを確認する
      # トップページには先ほど投稿した内容のツイートが存在することを確認する
    end
  end
  context '投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      # 新規投稿ページへのリンクがない
    end
  end
end
