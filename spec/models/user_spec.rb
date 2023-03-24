require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject do
      @user = User.new(name: 'Selma', email: 'selma@test.com', password: '123_456', password_confirmation: '123_456')
    end

    before { subject.save }

    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'email should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'password should be present' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
