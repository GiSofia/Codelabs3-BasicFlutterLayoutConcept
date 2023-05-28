import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Business Card'),
              onPressed: () {
                Navigator.pushNamed(context, '/businesscard');
              },
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              child: const Text('Layout Basics'),
              onPressed: () {
                Navigator.pushNamed(context, '/layoutbasics');
              },
            ),
          ],
        ),
      ),
    );
  }
}
