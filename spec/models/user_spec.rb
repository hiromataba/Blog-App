require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    subject { User.new name: 'Barack Mukelenga' }

    before { subject.save }

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an alpha name' do
      subject.name = ' '
      expect(subject).to_not be_valid
    end

    it 'should have a postive integer posts counter' do
      subject.posts_counter = -1
      expect(subject).to_not be_valid
    end
  end
end
