# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.delete_all
Deck.delete_all

data = YAML.load_file('config/decks.yml')
decks = data['decks']

decks.each do |deck|
  d = Deck.create({name: deck['name']})

  deck['cards'].each do |card_data|
    d.cards.create(card_data)
  end
end
