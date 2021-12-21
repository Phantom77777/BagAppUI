import 'package:bagapp/constants.dart';
import 'package:bagapp/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:bagapp/models/Product.dart';

import 'categories.dart';
import 'item_card.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(  
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
               ),
               itemBuilder: (context, index) => ItemCard(product: products[index], press: () =>
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => DetailsScreen(
                               product: products[index],
                             ),
                         ),
                   ),
                   )
             ),
           ),
          ),
        ),
      ],
    );
  }
}

