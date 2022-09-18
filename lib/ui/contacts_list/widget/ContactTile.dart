import 'package:flutter_contacts/data/contact.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.contact,
    required this.onFavoritePressed,
  }) : super(key: key);

  final Contact contact;
  final void Function() onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Center(child: Text(contact.name)),
        subtitle: Center(child: Text(contact.phoneNumber)),
        trailing: IconButton(
            icon: Icon(
              // Ternary operator ? : acts like an if-else statement
              contact.isFavorite ? Icons.star : Icons.star_border,
              color: contact.isFavorite ? Colors.amber : Colors.grey,
            ),
            // Invoking a callback defined in the parent widget
            onPressed: onFavoritePressed));
  }
}
