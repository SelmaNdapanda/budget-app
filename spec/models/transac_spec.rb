require 'rails_helper'

RSpec.describe Transac, type: :model do
  subject { Transac.new(name: 'Transac1', amount: '10', author_id: '1', group_id: '1') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'author id should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'group id should be present' do
    subject.group_id = nil
    expect(subject).to_not be_valid
  end
end
