require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Validations' do
    @user = User.new(name: 'Selma', email: 'selma@test.com', password: '123_456', password_confirmation: '123_456')

    subject do
      @new_group = Group.new(name: 'Group1', icon: 'https://logowik.com/content/uploads/images/kfc-kentucky-fried-chicken-black8961.jpg')
    end

    before { subject.save }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'icon should be present' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
