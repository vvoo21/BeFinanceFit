require 'rails_helper'

RSpec.describe 'expenses/_expense', type: :view do
  let(:user) { User.create(name: 'vanessa', email: 'user@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: '🍕', user_id: user.id) }
  let(:expense) { Expense.create(name: 'Groceries', amount: 50, user_id: user.id) }

  before do
    assign(:expense, expense)
    render partial: 'expenses/expense', locals: { expense: }
  end

  it 'displays the transaction details' do
    expect(rendered).to have_text("Transaction N°#{expense.id}: #{expense.name}")
    expect(rendered).to have_text(expense.created_at.strftime('%d %b %Y at %I:%M%P'))
    expect(rendered).to have_text('Amount')
    expect(rendered).to have_text(expense.amount)
  end
end
