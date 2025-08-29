import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/components/button.dart';

class HomePage extends StatelessWidget {
  const HomePage( {super.key});
//café home page?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 30, 24),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          //shop name
          const SizedBox(height: 25),
          Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 32,
                color: Color.fromARGB(255, 255, 235, 235)
              )
          ),
          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/sushi_1.png'),
          ),

          const SizedBox(height: 25),

          // title
          Text(
            "The taste of japanese food",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 38,
              color: Colors.white
            ),
          ),

          // subtitle
          Text(
            "Feel the taste of the most popular japanese food from anywhere and anytime.",
            style: TextStyle(
              color: Colors.grey[300],
              height: 2,
            ),
          ),

          const SizedBox(height: 25),

          // button
          MyButton(text: "Get Started")
        ],
        ),
      ),
    );
  }
}