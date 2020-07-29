import 'package:flutter/material.dart';
import 'package:flutterTesteProvider/provider/userProvider.dart';
import 'package:provider/provider.dart';

class users extends StatefulWidget {
  @override
  _usersState createState() => _usersState();
}

class _usersState extends State<users> {
  @override
  Widget build(BuildContext context) {
    return Consumer<userProvider>(builder: (context, user, child) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => {
              Provider.of<userProvider>(context, listen: false).addUserList(),
            },
          ),
          body: ListView.builder(
              itemCount: user.userList.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(user.userList[index].getPic),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(user.userList[index].getName),
                    ],
                  ),
                );
              }));
    });
  }
}
