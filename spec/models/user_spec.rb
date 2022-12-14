require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    describe 'it validates email' do
      it { is_expected.to validate_presence_of(:email) }
    end

    describe 'it validates password' do
      it { is_expected.to validate_presence_of(:password) }
    end
  end

end