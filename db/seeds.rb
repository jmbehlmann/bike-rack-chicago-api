require 'csv'

# to seed historical racks

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Bike_Racks_-_Historical_20240203.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')



csv.each do |row|
  t = BikeRack.new
  t.name = row['Community Name']
  t.description = row['Address']
  t.quantity = row['TotInstall']
  t.style = "X"
  # lat = row['Latitude']
  # lon = row['Longitude']
  # t.location = "POINT (#{lon} #{lat})"
  t.latitude = row['Latitude']
  t.longitude = row['Longitude']
  t.save
end
puts "there are now #{BikeRack.count} bike racks in the db"

# to seed newer racks

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Bike_Racks_20240203.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  t = BikeRack.new
  t.name = row['Name']
  t.description = row['Location']
  t.quantity = row['Quantity']
  t.style = row['Type']
  # t.location = row['the_geom']
  t.latitude = row['Latitude']
  t.longitude = row['Longitude']
  t.save
end
puts "there are now #{BikeRack.count} bike racks in the db"
