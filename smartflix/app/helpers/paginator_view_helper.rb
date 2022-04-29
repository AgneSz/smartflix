module PaginatorViewHelper
 def paginate(array)
   link_to("Previous page", "#{request.path}#{decrement_page}", { style: 'padding: 6px'}) +
    +
   link_to("Next page", "#{request.path}#{increment_page}", { style: 'padding: 6px'})
 end

 def increment_page
   "?page=#{page_number + 1}"
 end

 def decrement_page
   page = (page_number < 1) ? page_number : page_number - 1
   "?page=#{page}"
 end

 def page_number
   params.fetch(:page, 1).to_i
 end
end