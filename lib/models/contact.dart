class Contact {
  String _name;
  String _phone;

  Contact({String name, String phone}) {
    this._name = name;
    this._phone = phone;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;

  Contact.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this._name;
    data['phone'] = this._phone;

    return data;
  }
}
