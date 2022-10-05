import 'package:flutter/material.dart';
import 'package:gmail_app/global_data.dart';
import 'package:gmail_app/providers/appeared_list_provider.dart';
import 'package:gmail_app/providers/emails_lists_area_provider.dart';
import 'package:gmail_app/providers/side_menu_provider.dart';
import 'package:gmail_app/widgets/above_email_list.dart';
import 'package:gmail_app/widgets/email_item.dart';
import 'package:gmail_app/widgets/labels/general_emails_list.dart';
import 'package:gmail_app/widgets/labels/starred_list.dart';
import 'package:gmail_app/widgets/list_of_emails.dart';
import 'package:gmail_app/widgets/search_textfield.dart';
import 'package:gmail_app/widgets/side_menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        hoverColor: Colors.grey.shade200,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SideMenuProvider(),
        ),
        ChangeNotifierProvider(create: (_) => AppearedListProvider()),
        ChangeNotifierProvider(
          create: (_) => EmailsListAreaProvider(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            EmailsListAreaProvider emailsListAreaProvider =
            Provider.of(context, listen: false);
            emailsListAreaProvider.appearedEmailsList =
            const StarredList();
          },
          label: Padding(
            padding: const EdgeInsets.only(
                bottom: 50.0, top: 50, left: 15, right: 15),
            child: Row(
              children: const [
                Icon(Icons.edit),
                SizedBox(
                  width: 20,
                ),
                Text("Compose"),
              ],
            ),
          ),
        ),
        body: Consumer<EmailsListAreaProvider>(
          builder: (_, provider, __) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 200,
                  child: SideMenuBar(),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, top: 4),
                    child: Consumer<EmailsListAreaProvider>(
                      builder: (_, provider, __) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SearchTextField(),
                            const SizedBox(
                              height: 15,
                            ),
                            provider.appearedEmailsList
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
