import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

final _flowKey = Object();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Christmassy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FirebaseUIActions(
          actions: [
            SMSCodeRequestedAction((context, action, flowKey, phoneNumber) {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => SMSCodeInputScreen(
                    flowKey: flowKey,
                  ),
                ),
              );
            }),
          ],
          child: PhoneInputView(
            flowKey: _flowKey,
          ),
        ),
      ),
    );
  }
}
