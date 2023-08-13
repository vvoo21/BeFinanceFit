require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  it 'displays the page title' do
    render

    expect(rendered).to have_content('BeFinanceFit')
  end

  it 'displays login and sign up links' do
    render

    expect(rendered).to have_link('Login', href: new_user_session_path)
    expect(rendered).to have_link('Sign up', href: new_user_registration_path)
  end

  it 'displays correct CSS classes' do
    render

    expect(rendered).to have_css('.p-5.d-flex.flex-column.align-items-center.justify-content-between.h_400px')
    expect(rendered).to have_css('.font_Caveat.display-2')
    expect(rendered).to have_css('.d-flex.flex-column.w-100.gap-2')
    expect(rendered).to have_css('.btn.btn-primary')
    expect(rendered).to have_css('.btn.btn-light')
  end
end
