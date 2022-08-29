import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(
                child: Text(
                    '${faker.person.firstName()} ${faker.person.lastName()}')),
          );
        },
      ),
    );
  }
}
