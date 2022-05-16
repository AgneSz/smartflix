require 'rails_helper'

RSpec.describe 'Index page', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'display Movie titles on index page' do
    visit '/'
    movie = build(:movie, title: 'Training Day')
    expect(movie.title).to eq('Training Day')
  end

  it 'display 50 movies per page' do
    create_list(:movie, 50) 
    visit '/'
    expect(page).to have_css(".card-body", count: 50)
    expect(page).not_to have_css(".card-body", count: 51)
  end
end