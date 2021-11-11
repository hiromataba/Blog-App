user_show_spec.rb
require 'rails_helper'
RSpec.describe 'User view', type: :feature do
  include Devise::Test::IntegrationHelpers
  describe 'User show page' do
    let(:user) { User.create(name: 'denis', email: 'denis@example.com', password: 'password') }
    before do
      @user_one = User.create(name: 'Jake', email: 'Jake@example.com', password: 'password', postsCounter: 3,
                              bio: 'This is my bio.')
      @user_two = User.create(name: 'Selena', email: 'Selena@example.com', password: 'password')
      sign_in user
      visit user_path(@user_one)
    end
    it 'should be able see the number of posts.' do
      expect(page).to have_content('Number of posts:3')
    end
    it "should be able see user's username" do
      expect(page).to have_content('Jake')
    end
    it 'should see a button.' do
      expect(page).to have_content('See all posts')
    end
    it "should be able see the user's bio." do
      expect(page).to have_content('This is my bio.')
    end
    it "should redirects me to the user's post's index page" do
      find_link("see_all_#{@user_one.id}").click
      expect(current_path).to eq(posts_path(@user_one.id))
    end
  end
end
