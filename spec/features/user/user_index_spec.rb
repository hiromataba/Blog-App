user_index_spec.rb
require 'rails_helper'
RSpec.describe 'User view', type: :feature do
  include Devise::Test::IntegrationHelpers
  describe 'User index view' do
    let(:user) { User.create(name: 'Giuseppe', email: 'Giuseppe@example.com', password: 'password') }
    before do
      @user_one = User.create(name: 'Carlo', email: 'Carlo@example.com', password: 'password', postsCounter: 3)
      @user_two = User.create(name: 'Maria', email: 'Maria@example.com', password: 'password')
      sign_in user
      visit root_path
    end
    it 'should be able see the username of all other users.' do
      expect(page).to have_content('Maria')
      expect(page).to have_content('Carlo')
    end
    it 'should be able see the number of posts each user has written.' do
      expect(page).to have_content('Number of posts:3')
    end
  end
end
