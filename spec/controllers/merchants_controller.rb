require 'rails_helper'

RSpec.describe MerchantsController, type: :controller do

  describe 'before actions' do
    describe 'set_merchant' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:set_merchant)
      end
    end
  end

  # index action
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign merchants instance variable' do
      expect(assigns[:merchants]).to eq(Merchant.all)
    end
  end

  # new action
  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign merchant as new instance variable' do
      expect(assigns[:merchant]).to be_instance_of(Merchant)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end

  # create action
  describe 'POST #create' do
    before do
      post :create, params: merchant_params
    end

    context 'when params are correct' do
      let(:merchant_params) { { merchant: { name: "Abhishek kanojia", description: "description", email: "test@gmail.com", status: 'active' } } }

      it 'is expected to create new merchant successfully' do
        expect(assigns[:merchant]).to be_instance_of(Merchant)
      end

      it 'is expected to have name assigned to it' do
        expect(assigns[:merchant].name).to eq('Abhishek kanojia')
      end

      it 'is expected to set flash message' do
        expect(flash[:notice]).to eq('Merchant was successfully created.')
      end
    end

    context 'when params are not correct' do
      let(:merchant_params) { { merchant: { name: '' } } }

      it 'is expected to render new template' do
        is_expected.to render_template(:new)
      end

      it 'is expected to add errors to name attribute' do
        expect(assigns[:merchant].errors[:name]).to eq(['can\'t be blank'])
      end
    end
  end

  # edit action
  describe 'GET #edit' do
    before do
      # something that you want to execute before running `it` block
      get :edit, params: params
    end

    context 'when merchant id is valid' do
      let(:merchant) { FactoryBot.create :merchant }
      let(:params) { { id: merchant.id } }

      it 'is expected to set merchant instance variable' do
        expect(assigns[:merchant]).to eq(Merchant.find_by(id: params[:id]))
      end

      it 'is expected to render edit template' do
        is_expected.to render_template(:edit)
      end
    end

  end

  # update action
  describe 'PATCH #update' do

    before do
      # something that you want to execute before running `it` block
      patch :update, params: params
    end

    context 'when merchant exist in database' do
      let(:merchant) { FactoryBot.create :merchant }
      let(:params) { { id: merchant.id, merchant: { name: 'test name' } } }

      context 'when data is provided is valid' do
        it 'is expected to update merchant' do
          expect(merchant.reload.name).to eq('test name')
        end

        it 'is expected to set flash message' do
          expect(flash[:notice]).to eq('Merchant was successfully updated.')
        end
      end

      context 'when data is invalid' do
        let(:merchant) { FactoryBot.create :merchant }
        let(:params) { { id: merchant.id, merchant: { name: '' } } }

        it 'is expected not to update merchant name' do
          expect(merchant.reload.name).not_to be_empty
        end

        it 'is expected to render edit template' do
          expect(response).to render_template(:edit)
        end

        it 'is expected to add errors to merchant name attribute' do
          expect(assigns[:merchant].errors[:name]).to eq(['can\'t be blank'])
        end
      end
    end
  end

  # destroy action
  describe 'DELETE #destroy' do

    before do
      # something that you want to execute before running `it` block
      delete :destroy, params: params
    end

    context 'when merchant exist in database' do
      let(:merchant) { FactoryBot.create :merchant }
      let(:params) { { id: merchant.id, merchant: { name: 'test name' } } }

      context 'when data is provided is valid' do
        it 'is expected to delete merchant' do
          expect(merchant.delete)
        end

        it 'is_expected to redirect_to merchants_path' do
          is_expected.to redirect_to(merchants_path)
        end

        it 'is expected to set flash message' do
          expect(flash[:notice]).to eq('Merchant was successfully destroyed.')
        end
      end
    end
  end

end