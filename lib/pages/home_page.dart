// Imports
import 'package:flutter/material.dart';
import 'package:flutter_kiri/services/notification_service.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              NotificationService()
                  .showNotifications(title: 'Sample title', body: 'It works!');
            },
            child: const Text('Show notifications')),
      ),
    );
  }
}
