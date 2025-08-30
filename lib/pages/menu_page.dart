import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/models/Food.dart';
import 'package:travel_app/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // food menu
  List foodMenu = [
    Food(
      name: "temaki",
      price: "30",
      imagePath: "lib/images/temaki.png",
      rating: "4.9",
    ),
    Food(
      name: "Salmon",
      price: "5",
      imagePath: "lib/images/sushi_4.png",
      rating: "4.8",
    ),
    Food(
      name: "rice",
      price: "3",
      imagePath: "lib/images/sushi_2.png",
      rating: "4.7",
    ),
    Food(
      name: "nigiri",
      price: "2",
      imagePath: "lib/images/sushi_3.png",
      rating: "4.5",
    )
  ];

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),

          const SizedBox(height: 25),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),
          
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 25),
          // popular food


        ],
      ),
    );
  }
}

