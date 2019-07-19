import './contact.dart';
import './message.dart';

enum ChatRoomType { PRIVATE, GROUP }

class ChatRoom {
  String name;
  ChatRoomType type;
  List<Contact> contacts;
  List<Message> messages;
  DateTime createdAt;
  DateTime updatedAt;

  // Initializer.
  ChatRoom({
    this.name,
    this.type,
    this.contacts,
    this.createdAt,
    this.updatedAt,
  });

  // Mapper from JSON.
  ChatRoom.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type =
        (json['type'] == 'PRIVATE' ? ChatRoomType.PRIVATE : ChatRoomType.GROUP);
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];

    if (json['contacts'] != null) {
      contacts = new List<Contact>();
      json['contacts'].forEach((v) {
        contacts.add(new Contact.fromJson(v));
      });
    }

    if (json['messages'] != null) {
      messages = new List<Message>();
      json['messages'].forEach((v) {
        messages.add(new Message.fromJson(v));
      });
    }
  }

  // Mapper to JSON.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    if (this.contacts != null) {
      data['contacts'] = this.contacts.map((v) => v.toJson()).toList();
    }

    if (this.messages != null) {
      data['messages'] = this.messages.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
