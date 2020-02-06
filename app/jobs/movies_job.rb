class MoviesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # @movies = Movie.all    # Do something later
    [*(1..100000000000000000000000000)].each do |num|
      puts num if num.even?
    end
  end
end
