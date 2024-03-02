import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/staticData.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/profile.png',
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Transform(
                transform: Matrix4.translationValues(24.0, 0.0, 0.0),
                child: Text(
                  "Photo profil",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Icon(
                  Icons.edit,
                  size: 28,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            child: Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nom",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(user.name,
                              style: GoogleFonts.poppins(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16))
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(user.email,
                              style: GoogleFonts.poppins(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16))
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Numero de telephone",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(user.phone,
                              style: GoogleFonts.poppins(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16))
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
