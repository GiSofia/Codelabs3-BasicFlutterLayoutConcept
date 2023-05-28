import 'package:flutter/material.dart';

class LayoutBasicsPage extends StatelessWidget {
  const LayoutBasicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Basics'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              'https://i.pinimg.com/474x/15/2c/86/152c86196f4b6e5e4a6b501fa542f2a5.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'LEVI ACKERMAN',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            'Shingeki No Kiojin',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Rubik',
                              color: Colors.grey.shade700,
                            ),
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Edad: 30 años',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              Text(
                                'Rango: Capitán',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade700,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
