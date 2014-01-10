class ApiController < ApplicationController
  def v1
    include_config = {cards: {except: [:created_at, :updated_at]} }
    decks = Deck.all.as_json({include: include_config, except: [:created_at, :updated_at]})
    data = {decks: decks}.to_json
    render json: data
  end
end
