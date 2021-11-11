require 'rails_helper'

RSpec.describe 'routes for users', type: :routing do
  it 'route of users' do
    expect(get: '/').to route_to(controller: 'users', action: 'index')
  end
  it 'route of user profile' do
    expect(get: '/users/4').to route_to(controller: 'users', action: 'show', id: '4')
  end
end
