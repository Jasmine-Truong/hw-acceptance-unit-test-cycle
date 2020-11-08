class Movie < ActiveRecord::Base
  def self.with_director(title)
    director = Movie.find_by_title(title).director
    if director.nil? or director.blank?
      return nil
    end
    return Movie.where(director: director)
  end
end
