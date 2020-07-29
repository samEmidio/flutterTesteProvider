import 'package:flutter/cupertino.dart';
import '../model/user.dart';

class userProvider with ChangeNotifier {
  List<user> userList = new List<user>();

  addUserList() {
    user u = new user("Ana lu", "https://i.imgur.com/AF7pCun.jpg");

    userList.add(u);

    notifyListeners();
  }
}
