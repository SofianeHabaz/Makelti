import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/models/tag.dart';
import 'package:marketplace/wilaya.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool favorie = false;

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
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final product = arguments['data'] as Product;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Detail du produit",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  setState(() => {favorie = !favorie});
                },
                icon: favorie
                    ? Icon(
                        Icons.favorite_border,
                        size: 28,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.favorite,
                        size: 28,
                        color: Colors.white,
                      )),
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 32,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  product.image,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                getTags(product.tags),
                style: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                product.name,
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                product.description,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Text(
                    product.price.toString() + " DA",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.94,
                height: 2,
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 32,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    product.vendor.name,
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 32,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    wilaya[random.nextInt(wilaya.length)],
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 32,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    product.vendor.email,
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 32,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    product.vendor.phone,
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
