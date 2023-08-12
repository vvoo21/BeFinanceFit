require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  let(:user) { User.create(name: 'vanessa', email: 'user@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: '🍕', user:) }
  let(:expense) { Expense.create(name: 'Groceries', amount: 50, user:, category:) }

  before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'GET #index' do
    it 'renders the index template' do
      get :index, params: { category_id: category.id }
      expect(response).to render_template(:index)
    end

    it 'assigns @expenses' do
      expense # Create an expense
      get :index, params: { category_id: category.id }
      expect(assigns(:expenses)).to eq([expense])
    end
  end

  describe 'GET #show' do
    it 'renders the show template' do
      get :show, params: { category_id: category.id, id: expense.id }
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    it 'renders the new template' do
      get :new, params: { category_id: category.id }
      expect(response).to render_template(:new)
    end

    it 'assigns a new Expense to @expense' do
      get :new, params: { category_id: category.id }
      expect(assigns(:expense)).to be_a_new(Expense)
    end

    it 'assigns @selected_category' do
      get :new, params: { category_id: category.id }
      expect(assigns(:selected_category)).to eq(category)
    end
  end
end
