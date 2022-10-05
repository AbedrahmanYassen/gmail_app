import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/above_starred_email_list.dart';
import 'package:gmail_app/widgets/labels/general_emails_list.dart';
import 'package:gmail_app/widgets/list_of_emails.dart';

class StarredList extends StatelessWidget {
  const StarredList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GeneralEmailsListTemplate(aboveEmailListPart: AboveStarredEmailList(), listOfEmails: ListOfEmails());
  }
}
