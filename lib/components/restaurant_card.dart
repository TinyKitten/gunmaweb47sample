import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:gunma_eats/models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkResponse(
      onTap: () {
        print(restaurant.imageURL);
      },
      child: Column(children: [
        CachedNetworkImage(
            imageUrl: restaurant.imageURL,
            placeholder: (context, url) => const AspectRatio(
                  aspectRatio: 4 / 3,
                  // hash: https://blurha.sh/ 元はバーガーの写真
                  child: BlurHash(hash: 'LDH,Cw2o@^G@[DC6|_1b0~s:xYIV'),
                ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover),
        Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(restaurant.name,
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              Text(
                  "配達手数料 ¥${restaurant.deliveryFee}・${restaurant.fastestDeliveryTimeInMinutes}-${restaurant.latestDeliveryTimeInMinutes}分",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ],
          ),
        )
      ]),
    ));
  }
}
