require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'vanessa') }
  let(:expense) { Expense.create(name: 'Flight Tickets', amount: 100, user_id: user.id) }

  subject { Category.create(name: 'Travel', icon: '✈️', user_id: user.id) }

  before { subject.save }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end
end
