require 'rails_helper'

RSpec.describe PostsController, type: :request do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "#index" do
    # it "works! (now write some real specs)" do
    #   get posts_index_path
    #   expect(response).to have_http_status(200)
    # end
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
