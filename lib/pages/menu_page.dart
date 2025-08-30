import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[500],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[700]
          ),
        ),
      ),
      body: Column(
        children: [
          //promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                        'Get 52% Promo',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white
                        ),
                    ),

                    const SizedBox(height: 20),

                    // redeem buttom
                    MyButton(
                        text: "Redeem",
                        onTap: () {},
                    ),
                  ],
                ),
                // image
                Image.asset('lib/images/sushi_2.png', height: 100)
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
          ),

          // menu list

          // popular food
        ],
      ),
    );
  }
}

