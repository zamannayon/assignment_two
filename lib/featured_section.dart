import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
             child: Image.asset("assets/images/Frame.png", 
              height: 387,
              width:343,
              alignment: Alignment.topLeft,
            ),
          ),
          
        ],
      ),
    );
  }
}
