require 'csv'

namespace :copy do 
  desc 'Imports data from CSV to postgresql'
  task :data => :environment do 

    def parse_csv
      CSV.foreach("db/netflix_titles.csv", headers: true).each_with_object([]) do |csv_obj, arr|
            obj = csv_obj.to_h
            obj["show_type"] = obj.delete("type")
            arr << obj
      end
    end
    
    Movie.import(parse_csv)
   end
 end