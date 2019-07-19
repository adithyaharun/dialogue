class Message {
  String message;
  String phone;
  DateTime createdAt;
  DateTime updatedAt;

  Message({
    this.message,
    this.phone,
    this.createdAt,
    this.updatedAt,
  });

  Message.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    phone = json['phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['message'] = this.message;
    data['phone'] = this.phone;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }
}
