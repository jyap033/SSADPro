/**
 * This class return the list of students who
 * can be challenged in compete mode.
 *
 *
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ssadpro/model/student_user.dart';
import 'package:ssadpro/view/compete_user_tiles.dart';

class CompeteFriendList extends StatefulWidget {
  @override
  _CompeteFriendListState createState() => _CompeteFriendListState();
}

class _CompeteFriendListState extends State<CompeteFriendList> {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<StudentUser>>(context) ?? [];
    final List<StudentUser> selected_users = new List(users.length) ?? [];
    return Row(children: <Widget>[
      Expanded(
          child: SizedBox(
              child: new ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return CompeteUserTile(
            user: users[index],
            color: Color(0xffE2950F),
          );
        },
      )))
    ]);
  }
}
