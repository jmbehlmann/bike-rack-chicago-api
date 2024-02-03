bike_racks_data = [
  {
    name: "West Carroll, between Albany and Kedzie",
    description: "Bike rack on West Carroll Avenue",
    quantity: 2,
    style: "Type B",
    location: "POINT(-87.70509 41.88781)",
    latitude: 41.88781,
    longitude: -87.70509
  },
  {
    name: "116 S. Michigan Ave",
    description: "Bike rack near 116 S. Michigan Ave",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.624659 41.880547)",
    latitude: 41.880547,
    longitude: -87.624659
  },
  {
    name: "3459 W. Ogden",
    description: "Bike rack near Plaza Food & Liquor",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.71234038 41.8553204)",
    latitude: 41.8553204,
    longitude: -87.71234038
  },
  {
    name: "1445 West 18th Street",
    description: "Bike rack near Coyote Restaurant",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.663075 41.857656)",
    latitude: 41.857656,
    longitude: -87.663075
  },
  {
    name: "1646 West 18th Street",
    description: "Bike rack near Fuzze (Restaurant)",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.668033 41.85798)",
    latitude: 41.85798,
    longitude: -87.668033
  },
  {
    name: "4800 W Fullerton",
    description: "Bike rack near Dollar Tree",
    quantity: 1,
    style: "Decorative",
    location: "POINT(-87.74671478 41.92436674)",
    latitude: 41.92436674,
    longitude: -87.74671478
  },
  {
    name: "7656 South Halsted Street",
    description: "Bike rack near Paradise Grill",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.644494 41.754478)",
    latitude: 41.754478,
    longitude: -87.644494
  },
  {
    name: "8221 West Irving Park Road",
    description: "Bike rack near Draft Bar Chicago",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.83267 41.951911)",
    latitude: 41.951911,
    longitude: -87.83267
  },
  {
    name: "3600 W. Cermack",
    description: "Bike rack near Blessed Sacramento Catholic Church",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.71510188 41.85170098)",
    latitude: 41.85170098,
    longitude: -87.71510188
  },
  {
    name: "3422 North Lincoln Avenue",
    description: "Bike rack near Loba Pastry",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.671903 41.943932)",
    latitude: 41.943932,
    longitude: -87.671903
  },
  {
    name: "4046 N. Leavitt St.",
    description: "Bike rack near Coonley Elementary School",
    quantity: 2,
    style: "Type B",
    location: "POINT(-87.684244 41.955205)",
    latitude: 41.955205,
    longitude: -87.684244
  },
  {
    name: "2158 West Belmont Avenue",
    description: "Bike rack near Belmont/Leavitt NE Corner",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.682992 41.939691)",
    latitude: 41.939691,
    longitude: -87.682992
  },
  {
    name: "200 West Adams Street",
    description: "Bike rack near Starbucks",
    quantity: 1,
    style: "Type B",
    location: "POINT(-87.634173 41.879745)",
    latitude: 41.879745,
    longitude: -87.634173
  },
]

bike_racks_data.each do |rack_data|
  BikeRack.create(rack_data)
end
