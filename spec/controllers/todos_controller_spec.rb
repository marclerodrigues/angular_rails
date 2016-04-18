require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  describe 'GET #index' do
    before :each do
      @todo = FactoryGirl.create(:todo)
      get :index
    end

    it 'returns success' do
      expect(response).to be_success
    end

    it 'assigns correctly @todos' do
      expect(assigns(:todos)).to eq([@todo])
    end
  end

  describe 'GET #show' do
    before :each do
      @todo = FactoryGirl.create(:todo)
      get :show, id: @todo
    end

    it 'returns success' do
      expect(response).to be_success
    end

    it 'assigns correctly @todo' do
      expect(assigns(:todo)).to eq(@todo)
    end
  end
end
