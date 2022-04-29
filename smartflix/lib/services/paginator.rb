module Services
 class Paginator
   def self.paginate(movies, page_number, movies_per_page)
     page_number = 1 unless page_number > 0
     start = movies_per_page * (page_number - 1) 
     finish = (page_number * movies_per_page) - 1 
     movies.slice(start..finish)
   end
 end
end