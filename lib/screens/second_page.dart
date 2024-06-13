import 'package:cogniant/widgets/condition_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cogniant/widgets/custom_button.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  static const String id = 'SecondPage';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // List of texts for the buttons
  final List<String> buttonTexts = [
    'Repeated sprains, injuries',
    'Post-Surgery Recovery',
    'Visceral pain',
    'Headaches',
    'Known medical diagnosis',
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    List<Padding> getRows() {
      List<Padding> rows = [];
      for (int i = 0; i < buttonTexts.length; i += 2) {
        rows.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  child: ConditionTile(
                    condition: buttonTexts[i],
                    selected: selectedIndex == i,
                  ),
                ),
                const SizedBox(width: 16.0),
                if (i + 1 < buttonTexts.length)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = i + 1;
                      });
                    },
                    child: ConditionTile(
                      condition: buttonTexts[i + 1],
                      selected: selectedIndex == i + 1,
                    ),
                  ),
              ],
            ),
          ),
        );
      }
      return rows;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 36.0),
                  Stack(
                    children: [
                      Container(
                        height: 6.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      Container(
                        height: 6.0,
                        width: (MediaQuery.of(context).size.width - 48.0) / 6,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 131, 35, 222),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    'Tell us about your condition',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    "Help us understand what you're dealing with",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24.0),
                  Column(
                    children: getRows(),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Divider(
              height: 1,
              color: CupertinoColors.systemGrey5,
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  CustomButton(
                    buttonText: 'Next',
                    callbackAction: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  CustomButton(
                    buttonText: "I don't know",
                    callbackAction: () {
                      debugPrint("I don't know");
                    },
                    backgroundColor: Colors.transparent,
                    textColor: Colors.black,
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
