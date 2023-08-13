require 'rails_helper'

RSpec.describe 'categories/index.html.erb', type: :view do
  before do
    @categories = [
      Category.new(name: 'Category 1', icon: '🍕', created_at: Time.zone.parse('2023-08-01')),
      Category.new(name: 'Category 2', icon: '✈️', created_at: Time.zone.parse('2023-07-15'))
    ]
    assign(:categories, @categories)
    render
  end

  it 'displays the page title' do
    expect(rendered).to have_content('CATEGORIES')
  end

  it 'displays a list of categories' do
    expect(rendered).to have_selector('.d-flex.flex-column.gap-2.bg-light.p-2.container.mt-3.mb-5', count: 1)
    expect(rendered).to have_selector('.no_txt_decoration', count: 2)
  end

  it 'displays "New category" link' do
    expect(rendered).to have_link('New category', href: new_category_path)
  end
end
