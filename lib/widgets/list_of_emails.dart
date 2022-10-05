import 'package:flutter/material.dart';

import '../global_data.dart';
import 'email_item.dart';
class ListOfEmails extends StatelessWidget {
  const ListOfEmails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return EmailItem(email: emailGlobal);
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
