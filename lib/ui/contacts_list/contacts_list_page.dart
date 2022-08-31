import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/data/contact.dart';

class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListPageState();
}

class _ContactsListPageState extends State<ContactsListPage> {
  late List<Contact> _contacts;

  // Runs when the widget is being inserted into the widget tree
  @override
  void initState() {
    super.initState();
    _contacts = List.generate(
        50,
        (index) => Contact(
            name: '${faker.person.firstName()} ${faker.person.lastName()}',
            email: faker.internet.email(),
            phoneNumber: faker.phoneNumber.us()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(child: Text(_contacts[index].name)),
            subtitle: Center(child: Text(_contacts[index].phoneNumber)),
          );
        },
      ),
    );
  }
}
