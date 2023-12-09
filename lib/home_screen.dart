import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Christmassy'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login/google');
            },
            child: const Text('Google'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login/phone');
            },
            child: const Text('Phone'),
          ),
        ],
      ),
      // body: ,
    );
  }
}
