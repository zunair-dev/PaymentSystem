require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    describe 'it validates uuid' do
      it { is_expected.to validate_presence_of(:uuid) }
    end

    describe 'it validates customer_email' do
      it { is_expected.to validate_presence_of(:customer_email) }
    end
  end
end
