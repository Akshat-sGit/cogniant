import 'package:flutter/material.dart';
import 'package:cogniant/widgets/custom_button.dart';


class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  static const String id = 'SecondPage';

  // List of texts for the buttons
  final List<String> buttonTexts = [
    'Repeated sprains, injuries',
    'Post-surgery',
    'Visceral pain',
    'Headaches',
    'Known medical diagnosis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container( // Set width to 80% of screen width
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Tell us about your condition',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Help us understand what you're dealing with",
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2,
                    //   crossAxisSpacing: 10.0,
                    //   mainAxisSpacing: 10.0,
                    // ),
                    itemCount: buttonTexts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomButton(
                        buttonText: buttonTexts[index], // Pass text to CustomButton widget
                      );
                    },
                  ),
                ],
              ),
            ),
            const Spacer(), 
            const Divider(
              height: 1,
              color: Colors.grey,
            ), 
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for "Next" button press
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
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for "I don't know" button press
                        // Implement your logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15), // Adjust button padding
                        backgroundColor:const Color.fromARGB(0, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        "I don't know",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
