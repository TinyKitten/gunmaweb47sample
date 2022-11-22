class Restaurant {
  final int id;
  final String name;
  final int fastestDeliveryTimeInMinutes;
  final int latestDeliveryTimeInMinutes;
  final int deliveryFee;
  final double rate;
  final String imageURL;

  const Restaurant({
    required this.id,
    required this.name,
    required this.fastestDeliveryTimeInMinutes,
    required this.latestDeliveryTimeInMinutes,
    required this.deliveryFee,
    required this.rate,
    required this.imageURL,
  });
}
