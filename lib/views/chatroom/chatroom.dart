import 'package:flutter/material.dart';

class ChatRoomView extends StatefulWidget {
  ChatRoomView({Key key}) : super(key: key);

  @override
  _ChatRoomViewState createState() => _ChatRoomViewState();
}

class _ChatRoomViewState extends State<ChatRoomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatRoom"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Material(color: Colors.grey[200]),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    padding:
                        EdgeInsets.only(left: 12, top: 4, right: 12, bottom: 4),
                    width: constraints.maxWidth - 32,
                    child: Row(
                      children: [
                        Flexible(
                          child: new TextFormField(
                            style: TextStyle(
                              fontSize: 14.0,
                              height: 1.0,
                            ),
                            decoration: InputDecoration(
                              hintMaxLines: 3,
                              border: InputBorder.none,
                              hintText: 'Enter message...',
                              hintStyle: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
