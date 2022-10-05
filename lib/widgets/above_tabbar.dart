import 'package:flutter/material.dart';

class AboveTabBarWidget extends StatelessWidget {
  const AboveTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
          // Row(children: [],)
        ],
      ),
    );
  }
}
