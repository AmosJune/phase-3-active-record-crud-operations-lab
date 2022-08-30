class Movie < ActiveRecord::Base

# CREATE Movie Record
    def self.create_with_title(title)
        Movie.create(title: title)
    end

# READ Records
    # Returns first movie 
    def self.first_movie
        Movie.first 
    end

    # Returns last movie
    def self.last_movie
        Movie.last 
    end

    # Total no. of records
    def self.movie_count
        Movie.count
    end

    # find
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    # find_by
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    # .where clause
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

# UPDATE Records
    # Updates a single movie
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # Updates all movies
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

# DELETE Records
    # Delete a single movie
    def self.delete_by_id(id)
        movie = Movie.find(id)
        Movie.destroy
    end

    # Delete all movies
    def self.delete_all_movies
        Movie.delete_all 
    end

end