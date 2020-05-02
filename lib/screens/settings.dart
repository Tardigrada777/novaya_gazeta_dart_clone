import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Здесь будут настройки приложения',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}