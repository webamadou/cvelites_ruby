json = ActiveSupport::JSON.decode(File.read('db/seeds/languages.json'))
json.each do |record|
  Admin::Language.create!(record)
end
=begin
json = ActiveSupport::JSON.decode(File.read('db/seeds/events.json'))
json.each do |record|
  Event.create!(record)
end
=end