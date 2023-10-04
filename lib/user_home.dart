import 'package:flutter/material.dart';
import 'package:flutter_5iwj/user.dart';
import 'package:flutter_5iwj/user_item.dart';

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    final users = List.generate(100, (index) {
      return User(
          firstname: 'First name $index',
          lastname: 'Last name $index',
          address: '$index rue du Faubourg saint antoine'
      );
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return UserItem(user: users[index]);
        }),
      ),
    );
  }
}
