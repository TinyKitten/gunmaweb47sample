import 'dart:math' as math;

import 'package:faker/faker.dart';
import 'package:gunma_eats/models/restaurant.dart';

var rand = math.Random();

int randNextIntWithRange(int min, int max) {
  return min + rand.nextInt(max - min);
}

var dummyRestaurant = List.generate(
  10,
  (index) => Restaurant(
      id: index,
      name: faker.food.restaurant(),
      fastestDeliveryTimeInMinutes: randNextIntWithRange(10, 30),
      latestDeliveryTimeInMinutes: randNextIntWithRange(30, 40),
      deliveryFee: randNextIntWithRange(300, 500),
      rate: 5.0,
      imageURL: faker.image.image(
          width: 1280,
          height: 720,
          keywords: ['food', 'restaurant'],
          random: true)),
);
