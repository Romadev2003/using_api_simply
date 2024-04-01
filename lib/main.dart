import 'package:flutter/material.dart';
import 'package:korzinka_uz/model/user_model.dart';
import 'package:korzinka_uz/servise/user_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel>git  users=[];
  @override
  void initState() {loadUsers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(users[index].name.fist),
              );
            },
          ),
        ),
      ),
    );
  }

  void loadUsers()async {
      var user=await UserApi.loadingUsers();
      setState(() {
        users=user;
      });
  }
}
