import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('home'),
            ElevatedButton(onPressed: () {}, child: const Text('login')),
          ],
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
