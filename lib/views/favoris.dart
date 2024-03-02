import 'package:flutter/material.dart';
import 'package:marketplace/staticData.dart';
import 'package:marketplace/views/cards/product_card.dart';

class Favoris extends StatelessWidget {
  const Favoris({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 16),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: products!.length - 3,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.4 / 3,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14),
          itemBuilder: (context, index) => ProductCard(
            product: products![index + 1],
          ),
        ),
      ),
    );
  }
}
