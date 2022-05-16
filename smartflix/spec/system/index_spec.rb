require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    it 'contains Movie titles, titles' do
      get '/'

      expect(response.body).to include('Movie titles')
    end

    it 'shows default 50 titles' do
      get '/'

      expect(response.body).to include('Training Day') # 50th
      expect(response.body).not_to include('Dharmakshetra') # 51st
    end
  end
end