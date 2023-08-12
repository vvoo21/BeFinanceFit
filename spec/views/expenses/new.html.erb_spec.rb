require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  let(:user) { User.create(name: 'vanessa', email: 'user@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: '🍕', user_id: user.id) }
  let(:expense) { Expense.new }

  before do
    assign(:expense, expense)
    assign(:category, category)
    assign(:selected_category, category)
    render
  end

  it "displays the new transaction form" do
    expect(rendered).to have_css("form[action='#{category_expenses_path(category)}'][method='post']")

    expect(rendered).to have_field("expense_name")
    expect(rendered).to have_field("expense_amount")
    expect(rendered).to have_button("Create Expense")
  end

  it "displays the page title" do
    expect(rendered).to have_selector("h2", text: "New transaction")
  end

  it "displays a link to go back to the category" do
    expect(rendered).to have_link(href: category_path(category))
  end
end
