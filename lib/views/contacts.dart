import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  ContactsView({Key key}) : super(key: key);

  @override
  _ContactsViewState createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Contacts"),
    );
  }
}
