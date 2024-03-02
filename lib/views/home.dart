import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/models/tag.dart';
import 'package:marketplace/models/user.dart';
import 'package:marketplace/staticData.dart';
import 'package:marketplace/views/cards/product_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getData();
  // }

  // getData() async {
  //   products = await ApiService().getClubs();
  //   setState(() {});
  //   tags = await ApiService().getNews();
  //   setState(() {});
  // }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Categories",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => {
                      setState(
                        () => _currentIndex = index,
                      )
                    },
                    child: Container(
                      margin: index == 0
                          ? EdgeInsets.only(left: 4, right: 4)
                          : EdgeInsets.symmetric(horizontal: 4),
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _currentIndex == index
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                        color: _currentIndex == index
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        tags[index].name,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: _currentIndex == index
                                ? Colors.white
                                : Color(0xff333333),
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                "Produits",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: products!.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.4 / 3,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14),
              itemBuilder: (context, index) => ProductCard(
                product: products![index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Column(
//                       children: [
//                         Center(
//                           child: Image.asset(
//                             "assets/${tags[index].name}.png",
//                           ),
//                         ),
//                         Text(tags[index].name),
//                       ],
//                     ),