import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseAllSection extends StatelessWidget {
  final List<Map<String, dynamic>> images = [
    {'path': 'assets/images/Rectangle 2.png', 'width': 167.0, 'height': 220.0},
    {'path': 'assets/images/Rectangle 2.1.png', 'width': 167.0, 'height': 310.0},
    {'path': 'assets/images/Rectangle 2.2.png', 'width': 167.0, 'height': 310.0},
    {'path': 'assets/images/Rectangle 2.3.png', 'width': 167.0, 'height': 220.0},
    {'path': 'assets/images/Rectangle 2.4.png', 'width': 167.0, 'height': 220.0},
    {'path': 'assets/images/Rectangle 2.5.png', 'width': 167.0, 'height': 220.0},
    {'path': 'assets/images/Rectangle 2.6.png', 'width': 167.0, 'height': 310.0},
    {'path': 'assets/images/Rectangle 2.7.png', 'width': 167.0, 'height': 310.0},
    {'path': 'assets/images/Rectangle 2.9.png', 'width': 167.0, 'height': 310.0},
    {'path': 'assets/images/Rectangle 2.10.png', 'width': 167.0, 'height': 220.0},
  ];

  BrowseAllSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BROWSE ALL",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.bold,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: images[index]['width'], 
                height: images[index]['height'],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    images[index]['path'],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
