class Movie < ActiveRecord::Base

    #CREATE- instatiate a movie with a title and save to db
    def self.create_with_title(title)
      Movie.create(title: title)
    end
  
    #READ- return first item in table
    def self.first_movie
      Movie.first
    end
  
    #READ- return last item in table
    def self.last_movie
      Movie.last
    end
  
    #READ- return number of records in table
    def self.movie_count
      Movie.count
    end
    #READ- return movie based on id
    def self.find_movie_with_id(id)
      Movie.find(id)
    end
  
    #READ- return movie from table based on attribues with find_by method
    def self.find_movie_with_attributes(attributes)
      Movie.find_by(attributes)
    end
  
    #READ- use where clause to select movies after 2002
    def self.find_movies_after_2002
      Movie.where("release_date > 2002")
    end
  
    #UPDATE- update a single movie
    def update_with_attributes(attributes)
      self.update(attributes)
    end
  
    #UPDATE- update the title of all records at once using update method
    def self.update_all_titles(title)
      Movie.update(title: title)
    end
  
    #DELETE-delete a single item with destroy method
    def self.delete_by_id(id)
      movie = Movie.find(id)
      movie.destroy
    end
    
    #DELETE- delete all items at once with destroy_all
    def self.delete_all_movies
      Movie.destroy_all
    end
  
  end