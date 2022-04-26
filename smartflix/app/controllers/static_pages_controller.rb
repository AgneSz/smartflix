require 'csv'

class StaticPagesController < ApplicationController
  def home
    # @movies = CSV.foreach(("db/netflix_titles.csv"), headers: true, col_sep: ",")
    # @page_number = params.fetch(:page, 1).to_i
  end
end
