require 'rails_helper'

RSpec.describe "movies/index.html.erb", type: :view do
  describe "index page" do
  #  it "shows default 50 titles per page" do
  #     visit "/"
  #     expect(response.body).to have_field("title", with: "Castle and Castle") # 50th
  #     expect(response).not_to have_field("title", with: "Dharmakshetra") # 51st
  #   end

    it "shows default 50 titles per page" do
      visit "/"
      expect(page).to have_text("Traimning Day") # 50th
      expect(page).not_to have_text("Dharmakshetra") # 51st
    end
  end
end
