json.array! @squirell.each do |squirell|
  json.partial! 'squirell.json.jbuilder', squirell: squirell
end