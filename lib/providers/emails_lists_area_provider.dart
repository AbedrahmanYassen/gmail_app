import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/labels/inbox.dart';
import 'package:gmail_app/widgets/labels/starred_list.dart';

class EmailsListAreaProvider with ChangeNotifier{
  Widget appearedEmailsList =  const InboxEmailList() ;


   void changeAppearedEmailList(EmailList emailList){
    switch(emailList){
      case EmailList.INBOX : appearedEmailsList = const InboxEmailList()  ;break;
      case EmailList.STARRED : appearedEmailsList = const StarredList() ;break;
      case EmailList.DRAFT:
        // TODO: Handle this case.
        break;
    }
    notifyListeners();
  }
}

enum EmailList {
 INBOX , STARRED , DRAFT
}