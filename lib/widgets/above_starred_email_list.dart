import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/above_tabbar.dart';

class AboveStarredEmailList extends StatelessWidget {
  const AboveStarredEmailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end,children: const [
      AboveTabBarWidget()
    ],);
  }
}
