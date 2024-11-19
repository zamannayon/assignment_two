import 'package:assignment_two/browse_all_section.dart';
import 'package:assignment_two/featured_section.dart';
import 'package:assignment_two/header_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSection(),
            const FeaturedSection(),
            BrowseAllSection(),
            Center(
              child: SizedBox(
                width: 343, 
                height: 52, 
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    side: const BorderSide(color: Colors.black), 
                  ),
                  onPressed: () {},
                  child: const Text(
                    "SEE MORE",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
