require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'redirects to categories_path when user is signed in' do
      allow(controller).to receive(:user_signed_in?).and_return(true)
      get :index
      expect(response).to redirect_to(categories_path)
    end

    it 'renders the index template when user is not signed in' do
      allow(controller).to receive(:user_signed_in?).and_return(false)
      get :index
      expect(response).to render_template(:index)
    end
  end
end
