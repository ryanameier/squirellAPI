json.array! @squirell.each do |squirells|
  json.id squirells.id
  json.first_name squirells.squirell_type
  json.last_name squirells.location
  json.birthdate squirells.date
  json.email squirells.description
end