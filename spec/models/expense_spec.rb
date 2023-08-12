require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) { User.create(name: 'vanessa') }
  let(:category) { Category.create(name: 'Travel', icon: '✈️', user_id: user.id) }

  subject { Expense.new(name: 'Flight Tickets', amount: 100, user_id: user.id) }

  before { subject.save }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
  end
end