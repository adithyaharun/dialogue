import "package:flutter/material.dart";

AppBar primaryAppBar({title: String, actions: const <Widget>[]}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.white,
    actions: actions,
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
