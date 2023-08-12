require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new(name: 'vanessa') }

    before { subject.save }

    describe 'validations' do
        it { should validate_presence_of(:name) }
        it { should validate_length_of(:name).is_at_least(2) }
        it { should validate_length_of(:name).is_at_most(50) }
        it { should have_many(:categories).dependent(:destroy) }
        it { should have_many(:expenses).dependent(:destroy) }
    end
end