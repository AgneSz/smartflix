# frozen_string_literal: true
require 'csv'

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @page_number = params.fetch(:page, 1).to_i
    movies_per_page = 50
    @movies_on_current_page = Services::Paginator.paginate(@movies, @page_number, movies_per_page)
  end
end