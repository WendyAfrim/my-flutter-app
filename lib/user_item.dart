import 'package:flutter/material.dart';
import 'package:flutter_5iwj/user.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.person,
        color: Colors.pink,
        size: 24.0,
      ),
      title: Text('${user.firstname} ${user.lastname}'),
      subtitle: Text(user.address),
    );
  }
}
