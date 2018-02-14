require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#active?' do
    context 'when entity_status is ACTIVE' do
      let(:user) { FactoryBot.create(:user, :active) }
      it { expect(user.active?).to be true }
    end
  end
end
