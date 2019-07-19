import 'package:flutter/material.dart';
import './layouts/appbar.dart';

// Import views.
import './chats.dart';
import './contacts.dart';
import './profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPosition = 0;
  static List<Widget> widgets = <Widget>[
    ChatsView(),
    ContactsView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(title: appBarTitle()),
      body: widgets.elementAt(currentPosition),
      floatingActionButton: Visibility(
        visible: currentPosition != 2,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Padding(padding: EdgeInsets.all(0)),
          ),
        ],
        currentIndex: currentPosition,
        selectedItemColor: Colors.green,
        onTap: onItemTapped,
      ),
    );
  }

  String appBarTitle() {
    switch (currentPosition) {
      case 0:
        return "Chats";
        break;
      case 1:
        return "Contacts";
        break;
      case 2:
        return "You";
        break;
      default:
        return "";
        break;
    }
  }

  void onItemTapped(int position) {
    setState(() {
      currentPosition = position;
    });
  }
}
