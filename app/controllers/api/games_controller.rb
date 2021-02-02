class Api::GamesController < ApplicationController
  def index
    response = HTTP.headers("Client-Id" => Rails.application.credentials.igdb_api[:client_id], "Authorization" => "Bearer #{Rails.application.credentials.igdb_api[:oauth_token]}", "Content-Type" => "application/xml").post("https://api.igdb.com/v4/games", :body => "fields age_ratings,first_release_date,game_engines,name,parent_game,platforms,rating,rating_count,release_dates,similar_games,standalone_expansions,status,storyline,summary,total_rating,total_rating_count,url;").parse
    render json: response
  end
end
