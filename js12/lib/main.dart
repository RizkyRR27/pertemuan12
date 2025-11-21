import 'user.dart';


void main (){
  User user = User(
    id: 1,
    name: 'Rizky Roza',
    email: 'iky@example.com',
    createdAt: DateTime.now(),
  );
  Map<String, dynamic> userJson = user.toJson();
  print('User JSON: $userJson');

  // JSON ke Object Dart
  Map<String, dynamic> jsonData = {
    'id': 2,
    'name': 'Jane Doe',
    'email': 'jane@example.com',
    'created_at': '2024-01-01T10:00:00.000Z',
  };

  User userFromJson = User.fromJson(jsonData);
  print('User from JSON: ${userFromJson.name}');
}