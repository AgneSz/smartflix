require 'rails_helper'

RSpec.describe Movie, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(title: "Anything",
                        description: "Lorem ipsum",
                        show_id: "1")
  }

  it "is not valid without a release_year" do
    movie = Movie.new(release_year: nil)
    expect(movie).to_not be_valid

    # ===>FactoryBot<===
    # movie = FactoryBot.create(:movie)
    # We can skip FactoryBot.create after adding conf in rails_helper.rb
    # movie = create(:movie)
    # expect(:movie.release_year).to be_valid
  end

  it "is not valid without a show_type" do
    movie = Movie.new(show_type: nil)
    expect(movie).to_not be_valid
  end

  it "is not valid without a title" do
    movie = Movie.new(title: nil)
    expect(movie).to_not be_valid
  end
end
