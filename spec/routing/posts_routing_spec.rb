require 'rails_helper'
RSpec.describe 'routes for posts', type: :routing do
  it 'route of user posts' do
    expect(get: '/users/4/posts').to route_to(controller: 'posts', action: 'index', user_id: '4')
  end
  it 'route of user post' do
    expect(get: '/users/4/posts/3').to route_to(controller: 'posts', action: 'show', user_id: '4',
                                                id: '3')
  end
end
