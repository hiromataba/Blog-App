require 'rails_helper'
RSpec.describe 'Post view', type: :feature do
  include Devise::Test::IntegrationHelpers
  describe 'Post show' do
    let(:user) { User.create(name: 'denis', email: 'denis@example.com', password: 'password') }
    let(:user_two) { User.create(name: 'Luca', email: 'Luca@example.com', password: 'password') }
    let(:comment) { Comment.create(text: 'Comment one', user: user, post: post) }
    describe 'display post information' do
      let(:post) { Post.create(title: 'Post title test', text: 'My test post', user: user) }
      before do
        Comment.create(text: 'Comment from Luca', user: user_two, post: post)
        Comment.create(text: 'Comment from denis', user: user, post: post)
        Like.create(post: post)
        sign_in user
        visit posts_show_path(user, post)
      end
      it "the post's title." do
        expect(page).to have_content('Post title test')
      end
      it 'how many likes the post has.' do
        expect(page).to have_content(post.likesCounter.to_s)
      end
      it 'who wrote the post.' do
        expect(page).to have_content(post.user.name.to_s)
      end
      it 'how many comments the post has.' do
        expect(page).to have_content("Comments: #{post.commentsCounter}")
      end
      it 'the comment each commentor left.' do
        expect(page).to have_content('Comment from denis')
        expect(page).to have_content('Comment from Luca')
      end
      it 'post`s body.' do
        expect(page).to have_content('My test post')
      end
      it 'the username of each commentor.' do
        expect(page).to have_content(comment.user.name.to_s)
      end
    end
  end
end
