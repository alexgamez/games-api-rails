# json.array! @games do |game|
#   json.(game, :id, :title, :genre, :platform)
# end

json.games @games do |game|
  json.id game.id
  json.title game.title
  json.genre game.genre
  json.platform game.platform
end
