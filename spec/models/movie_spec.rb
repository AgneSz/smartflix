require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:release_year) }
    it { should validate_presence_of(:show_type) }
    it { should validate_presence_of(:title) }
  end
end