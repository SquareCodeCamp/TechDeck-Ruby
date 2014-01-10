class ApiController < ApplicationController
  def v1
    x = YAML.load_file('config/decks.yml')
    render json: x.to_json
  end
end
