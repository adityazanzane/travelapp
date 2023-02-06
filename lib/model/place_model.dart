class PlaceInfo{
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
});
}

List places=[
  PlaceInfo(
    image: 'assets/images/udaipur_palace.jpg',
    location: 'India',
    name: 'Udaipur Palace',
    distance: 1000,
    days: 10,
    desc:
      "City Palace, Udaipur is a palace complex situated in the city of Udaipur in the Indian state of Rajasthan. It was built over a period of nearly 400 years, with contributions from several rulers of the Mewar dynasty.",
  ),
  PlaceInfo(
    image: 'assets/images/Kyoto-Japan.jpeg',
    location: 'Japan',
    name: 'Kyoto',
    distance: 5000,
    days: 7,
    desc:
    "Kyoto, once the capital of Japan, is a city on the island of Honshu. It's famous for its numerous classical Buddhist temples, as well as gardens, imperial palaces, Shinto shrines and traditional wooden houses.",
  ),
  PlaceInfo(
    image: 'assets/images/Cinque-Terre-Italy.jpeg',
    location: 'Italy',
    name: 'Cinque Terre',
    distance: 4000,
    days: 5,
    desc:
    "Cinque Terre is a string of centuries-old seaside villages on the rugged Italian Riviera coastline. In each of the 5 towns, colorful houses and vineyards cling to steep terraces, harbors are filled with fishing boats and trattorias turn out seafood specialties along with the Liguria region’s famous sauce, pesto.",
  ),
  PlaceInfo(
    image: 'assets/images/Galapagos-Islands.jpeg',
    location: 'Ireland',
    name: 'Galapagos Islands',
    distance: 3500,
    days: 12,
    desc:
    "The Galápagos Islands is a volcanic archipelago in the Pacific Ocean. It's considered one of the world's foremost destinations for wildlife-viewing. A province of Ecuador, it lies about 1,000km off its coast.",
  ),
];