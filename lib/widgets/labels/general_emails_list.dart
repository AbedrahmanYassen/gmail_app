import 'package:flutter/material.dart';
import 'package:gmail_app/global_data.dart';
import 'package:gmail_app/providers/appeared_list_provider.dart';
import 'package:gmail_app/widgets/above_email_list.dart';
import 'package:gmail_app/widgets/email_item.dart';
import 'package:gmail_app/widgets/list_of_emails.dart';
import 'package:provider/provider.dart';

class GeneralEmailsListTemplate extends StatelessWidget {
  final Widget aboveEmailListPart ;
  final Widget listOfEmails ;
  const GeneralEmailsListTemplate({Key? key,required this.aboveEmailListPart , required this.listOfEmails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: Colors.white,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.900,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.25,
                  child: aboveEmailListPart,
                ),
                listOfEmails
              ],
            );
          },
        ),
      ),
    );
  }
}
