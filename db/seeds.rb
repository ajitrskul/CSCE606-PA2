# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :description => "When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.", :release_date => '16-Apr-1988'},
  {:title => 'Crazy Rich Asians', :rating => 'PG-13',
    :description => "An NYU student is invited to Singapore by her boyfriend, only to discover he's from an incredibly wealthy family.", :release_date => '15-Aug-2018'},
  {:title => 'Green Book', :rating => 'PG-13',
    :description => "A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.", :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :description => "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.", :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :description => "A woman in her sixties who, after losing everything in the Great Recession, embarks on a journey through the American West, living as a modern-day nomad.", :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :description => "As a CODA (Child of Deaf Adults), Ruby is the only hearing member of her deaf family. When she discovers her passion for music, she must choose between her family's reliance on her and her own dreams.", :release_date => '13-Aug-2021'},
  {:title => 'Everything Everywhere All at Once', :rating => 'R',
    :description => "An exhausted Chinese-American woman is swept up in an insane adventure, where she alone can save the world by exploring other universes connecting with the lives she could have led.", :release_date => '8-Apr-2022'},
  {:title => 'KPop Demon Hunters', :rating => 'PG',
    :description => "A group of K-Pop idols must save the world from demons while dealing with the pressures of fame.", :release_date => '23-Aug-2025'},
  {:title => 'Demon Slayer: Kimetsu no Yaiba Infinity Castle', :rating => 'R',
    :description => "The Demon Slayer Corps faces their greatest challenge yet as they enter the Infinity Castle to confront Muzan Kibutsuji.", :release_date => '12-Sept-2025'},
]

more_movies.each do |movie_attrs|
  Movie.find_or_create_by!(title: movie_attrs[:title]) do |movie|
    movie.rating = movie_attrs[:rating]
    movie.description = movie_attrs[:description]
    movie.release_date = movie_attrs[:release_date]
  end
end
