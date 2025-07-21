import 'package:flutter/material.dart';
import 'package:gaaubesi_widget/widget/bgcolor.dart';
import 'package:gaaubesi_widget/widget/custom_button.dart';
import 'package:gaaubesi_widget/widget/custom_textfield.dart';

void main() {
  runApp(const MyExampleApp());
}

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BgColor(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Gaaubesi Widgets Example'),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                BeautifulTextField(
                  hintText: "Enter your name",
                  icon: Icons.person,
                ),
                const SizedBox(height: 20),
                OrangeButton(
                  text: "Submit",
                  onPressed: () {
                    debugPrint("Button Pressed!");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
