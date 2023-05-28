import 'package:flutter/material.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3),
                    bottomLeft: Radius.circular(3),
                    bottomRight: Radius.circular(3)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.account_circle,
                            size: 50,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Flutter McFlutter',
                              style: Theme.of(context).textTheme.headlineSmall),
                          const Text('Experienced App Developer')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('123 Main Street'),
                        Text('(415) 555-0198')
                      ]),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.accessibility),
                      Icon(Icons.timer),
                      Icon(Icons.phone_android),
                      Icon(Icons.phone_iphone)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
