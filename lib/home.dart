import 'package:flutter/material.dart';
import 'package:shimmer_effect_tutorial/shimmer_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return buildFoodShimmer(context);
          }),
    );
  }

  Widget buildFoodShimmer(context) {
    return ListTile(
      leading: const ShimmerWidget.circular(width: 64, height: 40),
      title: Align(
          alignment: Alignment.centerLeft,
          child: ShimmerWidget.rectangular(
              height: 16, width: MediaQuery.of(context).size.width * .3)),
      subtitle: const ShimmerWidget.rectangular(
        height: 20,
        width: double.infinity,
      ),
    );
  }
}
