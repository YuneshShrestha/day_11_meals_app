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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello!",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              FittedBox(
                child: Text(
                  "Welcome To Meals App",
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              GridItemsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
