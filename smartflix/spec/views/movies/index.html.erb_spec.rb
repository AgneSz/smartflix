# require 'rails_helper'

# # RSpec.describe "movies/index.html.erb", type: :view do
# #   describe "index page" do

# RSpec.describe "movies", type: :request do
#   # fixtures :all
#     it "shows default 50 titles per page" do
#       get "/movies/index"
#       # movie = movies(:movie_one)
#       # puts movie.director
#       puts response.body
#       expect(response.body).to include("Movie titles")
#       # expect(file_fixture("index.txt")).to have_text("Traimning Day") # 50th
#       # expect(page).not_to have_text("Dharmakshetra") # 51st
#   end
# end


# require "rails_helper"

# RSpec.describe "file" do
#   it "reads sample file" do
#     expect(file_fixture("index.txt").read).to eq("Traimning Day")
#   end
# end


# require 'rails_helper'

# RSpec.describe 'Index', type: :system do
#   describe 'index page' do
#     it 'contains Smartflix, titles' do
#       get '/'

#       expect(response.body).to include('Smartflix')
#     end

#     it 'shows default 50 titles' do
#       get '/'

#       expect(response.body).to include('Traimning Day') # 50th
#       expect(response.body).not_to include('Dharmakshetra') # 51st
#     end

#     it 'shows only 3 titles' do
#       get '/?limit=3'

#       expect(response.body).to include('Ganglands') # 3rd
#       expect(response.body).not_to include('Jailbirds New Orleans') # 4th
#     end
#   end
# end