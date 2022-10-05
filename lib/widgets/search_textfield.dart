import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: const Color.fromRGBO(239, 243, 252, 1),
        width: constraints.maxWidth * 0.7,
        child: TextField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            hintText: "Search all Conversations",
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.settings_applications_sharp),),
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ),
      );
    });
  }
}
