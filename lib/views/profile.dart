import 'package:flutter/material.dart';

// Views.
import 'settings/account.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  static const List<String> settingsMenu = <String>[
    "Account",
    "Chats",
    "Notifications",
    "Privacy & Security",
    "Data Usage",
    "Help & Support",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/user.png"),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Adithya Harun Tular",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Available",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1.0),
          ListView.separated(
            shrinkWrap: true,
            itemCount: settingsMenu.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 1.0, indent: 16);
            },
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: Text(settingsMenu[index]),
                ),
                onTap: () {
                  onSettingsMenuTapped(context, index);
                },
              );
            },
          ),
          Divider(height: 1.0),
        ],
      ),
    );
  }

  void onSettingsMenuTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountView()),
        );
        break;
      default:
    }
  }

  ListTile listTile(String title) => ListTile(title: Text(title));
}
