import 'package:flutter/material.dart';

import '../functions/chatroom_generator.dart';

import '../models/chatroom.dart';

import '../views/chatroom/chatroom.dart';
import '../views/settings/account.dart';

class ChatsView extends StatefulWidget {
  ChatsView({Key key}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  List<ChatRoom> _chatRooms = <ChatRoom>[];

  @override
  Widget build(BuildContext context) {
    _chatRooms = chatGenerator();

    print(_chatRooms);

    return Container(
      child: ListView.separated(
        itemCount: _chatRooms.length,
        itemBuilder: (BuildContext context, int index) =>
            _chatTile(context, _chatRooms[index]),
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 1.0, indent: 16);
        },
      ),
    );
  }
}

Widget _chatTile(BuildContext context, ChatRoom chatRoom) {
  var _chatRoomName = chatRoom.contacts.first.name;
  var _lastMessage = chatRoom.messages.last.message;
  var _lastMessageTime = chatRoom.messages.last.createdAt;

  return InkWell(
    child: Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                _chatRoomName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "${_lastMessageTime.hour}:${_lastMessageTime.minute}",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              _lastMessage,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatRoomView()),
      );
    },
  );
}
