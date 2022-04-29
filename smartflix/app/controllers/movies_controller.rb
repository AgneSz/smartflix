require 'csv'

class MoviesController < ApplicationController
  def index

    @movies = CSV.read(("db/netflix_titles.csv"), headers: true, col_sep: ",")
    
    @page_number = params.fetch(:page, 1).to_i
    
    @page_number = @page_number <= 0? 1 : @page_number
    
    @movies_per_page = 50
    
    @total_page_number = @movies.length / @movies_per_page
    
    # *# @movies = @movies.take(@movies_per_page)*
    
    # *# @movies = @movies.values_at(@movies_per_page*0..@movies_per_page*1-1)*
    
    # *# @movies = @movies.values_at(@movies_per_page*1..@movies_per_page*2-1)*
    
    # *# @movies = @movies.values_at(@movies_per_page*2..@movies_per_page*3-1)*
    
    @movies = @movies.values_at(@movies_per_page*(@page_number-1)..@movies_per_page*@page_number-1)
    
    end
  # def index
  #   @movies = CSV.foreach(("db/netflix_titles.csv"), headers: true, col_sep: ",")
  #   @page_number = params.fetch(:page, 1).to_i
  #   @movies_per_page = 50
  #   @movies_on_current_page = Paginator.paginate(@movies, @page_number, @movies_per_page)
  # end
end