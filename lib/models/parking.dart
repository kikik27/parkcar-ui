class Parking {
  final String title;
  final String price;
  final String distance;
  final String image;
  final ParkingType? type;
  final String? typeTxt;

  Parking(
      {required this.title,
      required this.price,
      required this.distance,
      required this.image,
      this.type,
      this.typeTxt});
}

enum ParkingType { discount, popular }

var parks = [
  Parking(
      title: 'DePark',
      price: '\$10/hr',
      distance: '560m',
      image: 'assets/images/senayan2.png',
      type: ParkingType.popular,
      typeTxt: 'popular'),
  Parking(
    title: 'Masa Mart',
    price: '\$50/hr',
    distance: '1 km',
    image: 'assets/images/park_2.png',
    type: ParkingType.discount,
    typeTxt: 'off 30%',
  ),
  Parking(
      title: 'Senayan Park',
      price: '\$10/hr',
      distance: '5.2km',
      image: 'assets/images/senayan.png',
      type: ParkingType.discount,
      typeTxt: 'Off 10%'),
];
