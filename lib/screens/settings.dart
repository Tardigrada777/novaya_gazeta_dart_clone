import 'package:flutter/material.dart';
import 'package:fitnessapp/mock/settings_mock.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: const Color(0xFFE0E0E0),
        child: ListView(
          children: _settingsItemsBuilder(context),
        ),
      )
    );
  }
}

List<Widget> _settingsItemsBuilder(BuildContext context) {
  return settingsItems.map((item) {
    return Card(
      child: InkWell(
        onTap: () { print('new tap'); },
        // padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(item.icon, size: 20.0, color: Colors.blue,)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.title,
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  SizedBox(height: 10.0),
                  // FIXME: add correct wrapping for description text
                  Text(item.description),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }).toList();
}