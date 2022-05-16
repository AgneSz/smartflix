require 'csv'

# ===>activerecord_import:
namespace :copy do 
  desc 'Imports data from CSV to postgresql'
  task :data, [:file]  => :environment do |t, args|
    movies = []
    # "db/netflix_titles.csv"
    CSV.foreach(args[:file], headers: true) do |row| 
     movies << row
    end
    time = Time.now.getutc

    puts 'importing movies from CSV to database'

    # Type as a column name is restricted in Active Records, type from CSV => show_type in schema
    Movie.copy_from_client [:show_type, :title, :director, :cast, :country, :date_added, :release_year, :rating, :duration, :listed_in, :description, :created_at, :updated_at] do |copy|
     movies.each do |d|
      # CVS keys / headers can be accessed only as strings, not as symbols
      copy << [d["type"], d["title"], d["director"], d["cast"], d["country"], d["date_added"].nil? ? nil : d["date_added"].to_datetime, d["release_year"], d["rating"], d["duration"], d["listed_in"], d["description"], time, time ]
     end
    end

    puts "movies: #{movies.length} imported"
   end
 end
# <===