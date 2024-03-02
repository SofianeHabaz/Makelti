import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/views/favoris.dart';
import 'package:marketplace/views/home.dart';
import 'package:marketplace/views/cards/product_card.dart';
import 'package:marketplace/views/my_products.dart';
import 'package:marketplace/views/product_details.dart';
import 'package:marketplace/views/profile.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makelti',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF5428),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(0xFFFF5428),
            ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/productDetails': (context) => ProductDetails(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> widgetList = [
    const Home(),
    const MyProducts(),
    const Favoris(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        title: Transform(
          transform: Matrix4.translationValues(-19.0, 0.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text("akelti",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: Icon(
                Icons.search_rounded,
                size: 28,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/logo2.png',
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Color(0xffa5a5a5),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Acceuil',
            icon: Icon(
              Icons.home_outlined,
              color: _currentIndex == 0
                  ? Theme.of(context).primaryColor
                  : Color(0xffa5a5a5),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Mon magasin',
            icon: Icon(
              Icons.folder_outlined,
              color: _currentIndex == 1
                  ? Theme.of(context).primaryColor
                  : Color(0xffa5a5a5),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favoris',
            icon: Icon(
              Icons.favorite_border,
              color: _currentIndex == 2
                  ? Theme.of(context).primaryColor
                  : Color(0xffa5a5a5),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person_2_outlined,
              color: _currentIndex == 3
                  ? Theme.of(context).primaryColor
                  : Color(0xffa5a5a5),
            ),
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 1
          ? FloatingActionButton.extended(
              onPressed: () => showDialog(
                  context: context, builder: (context) => CustomDialog()),
              label: Row(
                children: [
                  Image.asset("assets/premium1.png", color: Colors.white),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Booster vos annonces',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
              backgroundColor: Theme.of(context).primaryColor,
            )
          : null,
    );
  }
}

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  double _sliderValue = 500;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.height * 0.8,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Text(
                "Booster une annonce",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text("Annonce", style: GoogleFonts.poppins(fontSize: 16)),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Selectionnez une annonce",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 28,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Durée", style: GoogleFonts.poppins(fontSize: 16)),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    size: 24,
                  ),
                  Text(
                    "1 jour",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  Icon(
                    Icons.add,
                    size: 24,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Budget", style: GoogleFonts.poppins(fontSize: 16)),
            SizedBox(
              height: 8,
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 5000,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              activeColor: Theme.of(context)
                  .primaryColor, // Sets the color of the active track
              inactiveColor: Colors.grey,
            ),
            Center(
              child: Text(
                _sliderValue.ceil().toString() + " DA",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Annuler',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Text('Confirmer')),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
