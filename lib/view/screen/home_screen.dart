import 'package:flutter/material.dart';
import 'package:meals_app/view/widgets/grid_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Welcome To Meals App",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            GridItemsWidget(),
          ],
        ),
      ),
    );
  }
}
