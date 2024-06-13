import 'package:cogniant/screens/second_page.dart';
import 'package:cogniant/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  static const String id = 'Firstpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF530e99),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First, help us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'understand',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'your conditions',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'This will allow us to:',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    buildListItem('Recommend better treatments'),
                    buildListItem('Personalize your experience'),
                    buildListItem('Provide you with relevant content'),
                  ],
                ),
              ),
            ),
            CustomButton(
              buttonText: 'Next',
              callbackAction: () => Navigator.pushNamed(context, SecondPage.id),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 16.0,
            ),
          ],
        ),
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
