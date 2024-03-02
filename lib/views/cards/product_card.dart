import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/models/tag.dart';

import 'package:marketplace/wilaya.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});
  final Product product;

  String getTags(List<Tag> tags) {
    String str = '';
    for (int i = 0; i < tags.length; i++) {
      if (i == tags.length - 1)
        str += tags[i].name;
      else {
        str += tags[i].name + ' • ';
      }
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/productDetails',
          arguments: {'data': product}),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(1, 3),
              )
            ]),
        padding: EdgeInsets.only(bottom: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  product.image,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              getTags(product.tags),
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 12),
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.name,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Image.asset('assets/Vector.png'),
                      SizedBox(
                        width: 6.0,
                      ),
                      Flexible(
                        child: Text(
                          wilaya[random.nextInt(wilaya.length)],
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  product.price.toString() + " DA",
                  style: GoogleFonts.poppins(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

// Container(
//             width: double.infinity,
//             height: 1,
//             color: Colors.grey.withOpacity(0.3),
//           ),
//           SizedBox(
//             height: 12.0,
//           ),
// SizedBox(
//             height: 30,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: product.tags.length,
//               itemBuilder: (context, index) => Container(
//                 margin: index == 0
//                     ? EdgeInsets.only(left: 4, right: 4)
//                     : EdgeInsets.symmetric(horizontal: 4),
//                 padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
//                 child: Text(
//                   product.tags[index].name,
//                   style: GoogleFonts.oswald(
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xff333333),
//                       fontSize: 16),
//                 ),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//           ),