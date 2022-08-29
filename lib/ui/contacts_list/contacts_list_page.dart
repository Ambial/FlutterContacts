import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  final List<String> items =
      List<String>.generate(10000, (i) => 'Contact number $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(child: Text(items[index])),
          );
        },
      ),
    );
  }
}
