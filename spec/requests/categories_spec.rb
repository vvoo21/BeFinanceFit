require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:user) { User.create(name: 'vanessa', email: 'user@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: '🍕', user_id: user.id) }

  before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns @categories' do
      category
      get :index
      expect(assigns(:categories)).to eq([category])
    end
  end
end
