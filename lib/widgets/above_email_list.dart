import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/above_tabbar.dart';

class AboveEmailListPart extends StatelessWidget {
  const AboveEmailListPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const AboveTabBarWidget(),
          SizedBox(
            // height: constraints.maxHeight * 0.5,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Row(
                          children: const [
                            Icon(Icons.inbox),
                            SizedBox(
                              width: 15,
                            ),
                            Text("primary")
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            const Icon(Icons.tag_faces),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text("Promotions"),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.green.shade700,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Center(
                                          child: Text(
                                        "10 new",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                                LayoutBuilder(builder: (context , constraints){
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.147,
                                    child: Text(
                                      "the most common sources I got messages from ",
                                      style:
                                      TextStyle(color: Colors.grey.shade200),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  );
                                })
                              ],
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: const [
                            Icon(Icons.people),
                            SizedBox(
                              width: 15,
                            ),
                            Text("social"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
