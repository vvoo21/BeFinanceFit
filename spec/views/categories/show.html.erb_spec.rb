require 'rails_helper'

RSpec.describe 'categories/show.html.erb', type: :view do
  let(:user) { User.create(name: 'vanessa', email: 'user@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: '🍕', user_id: user.id) }
  let(:expense) { Expense.create(name: 'Groceries', amount: 50, user_id: user.id) }

  before do
    assign(:category, category)
    assign(:expenses, [expense])
    render
  end

  it 'displays the page title' do
    expect(rendered).to have_content('TRANSACTIONS')
  end

  it 'displays category name and icon' do
    expect(rendered).to have_content("#{category.name} #{category.icon}")
  end

  it 'displays total expenses amount' do
    expect(rendered).to have_content("$#{category.expenses.sum(:amount)}")
  end

  it 'displays a list of expenses' do
    expect(rendered).to render_template(partial: 'expenses/_expense', count: 1)
  end

  it 'displays "New transaction" link' do
    expect(rendered).to have_link('New transaction', href: new_category_expense_path(category))
  end

  it 'displays correct CSS classes and elements' do
    expect(rendered).to have_css('.bg-primary')
    expect(rendered).to have_css('.bg-light')
    expect(rendered).to have_css('.fixed-bottom')
  end
end
