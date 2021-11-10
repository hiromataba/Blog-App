require 'rails_helper'
RSpec.describe 'Posts', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Kolly', email: 'kolly@mail.com', password: 'password') }
  let(:post) { user.posts.create(title: 'Post', commentsCounter: 2, likesCounter: 4) }
  describe 'GET #index' do
    before do
      sign_in user
      get posts_path(user_id: post.user_id)
    end
    it 'should have response status correct(ok)' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end
