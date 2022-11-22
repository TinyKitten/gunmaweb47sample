import 'dart:math' as math;

import 'package:faker/faker.dart';
import 'package:gunma_eats/models/restaurant.dart';

var rand = math.Random();

int randRangeInt(int min, int max) {
  return min + rand.nextInt(max - min);
}

var dummyRestaurant = List.generate(
  10,
  (index) => Restaurant(
      id: index,
      name: faker.food.restaurant(),
      fastestDeliveryTimeInMinutes: randRangeInt(10, 30),
      latestDeliveryTimeInMinutes: randRangeInt(30, 60),
      deliveryFee: randRangeInt(300, 500),
      rate: 5.0,
      imageURL: faker.image
          .image(width: 800, height: 600, keywords: ['food'], random: true)),
);
