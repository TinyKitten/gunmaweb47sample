import 'package:flutter/material.dart';
import 'package:gunma_eats/pages/home_tabs/delivery.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Gunma Eats"),
              bottom: const TabBar(tabs: [
                Tab(
                  text: "配達",
                  icon: Icon(Icons.delivery_dining),
                ),
                Tab(
                  text: "お持ち帰り",
                  icon: Icon(Icons.shopping_bag),
                )
              ]),
            ),
            // ignore: prefer_const_constructors
            body: TabBarView(
              children: const [
                MyHomePageDeliveryTab(),
                Icon(Icons.shopping_bag)
              ],
            )));
  }
}
