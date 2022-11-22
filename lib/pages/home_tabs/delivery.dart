import 'package:flutter/material.dart';
import 'package:gunma_eats/components/restaurant_card.dart';
import 'package:gunma_eats/dummy/restaurant.dart';

class MyHomePageDeliveryTab extends StatelessWidget {
  const MyHomePageDeliveryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(32),
      child: Column(children: [
        TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container();
                });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text("すぐに配達・群馬県前橋市"), Icon(Icons.arrow_drop_down)],
          ),
        ),
        Container(
            padding: const EdgeInsets.only(top: 16),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dummyRestaurant.length,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(top: 16),
                child: RestaurantCard(
                  restaurant: dummyRestaurant[index],
                ),
              ),
            )),
      ]),
    ));
  }
}
