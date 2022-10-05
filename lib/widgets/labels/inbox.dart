import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/above_email_list.dart';
import 'package:gmail_app/widgets/labels/general_emails_list.dart';
import 'package:gmail_app/widgets/list_of_emails.dart';
class InboxEmailList extends StatelessWidget {
  const InboxEmailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const GeneralEmailsListTemplate(
      aboveEmailListPart: AboveEmailListPart(),
      listOfEmails: ListOfEmails(),
    );
  }
}
