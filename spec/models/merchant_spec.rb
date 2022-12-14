require 'rails_helper'

RSpec.describe Merchant, type: :model do

  describe 'validations' do
    describe 'it validates name' do
      it { is_expected.to validate_presence_of(:name) }
    end

    describe 'it validates description' do
      it { is_expected.to validate_presence_of(:description) }
    end

    describe 'it validates namstatuse' do
      it { is_expected.to validate_presence_of(:status) }
    end

    describe 'it validates email' do
      it { is_expected.to validate_presence_of(:email) }
    end
  end

end
