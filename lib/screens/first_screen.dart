import 'package:cogniant/screens/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  static const String id = 'Firstpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF530e99), // Ensure this color is visible
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft, // Align content to the center-left
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 40.0), // Add left and top padding
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First, help us',
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'understand',
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'your conditions',
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'This will allow us to:',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      buildListItem('Recommend better treatments'),
                      buildListItem('Personalize your experience'),
                      buildListItem('Provide you with relevant content'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                // Add functionality for button press
                Navigator.pushNamed(context, SecondPage.id); 

              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15), // Adjust button padding
                backgroundColor: const Color.fromARGB(255, 131, 35, 222),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 132, 32, 228),
            radius: 12, // Adjust the radius of the circle
            child: Icon(
              Icons.check,
              color: Colors.white, // White checkmark icon
              size: 18, // Adjust the size of the icon
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
