import 'package:flutter/material.dart';
import 'package:gmail_app/widgets/side_menu.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
class Email {
  String source = "" ;
  String title = "" ;
  String body = "" ;

  Email(this.source, this.title, this.body);
}
Email emailGlobal = Email("KNuggets",
    "Do a hands-on workshop, get an MLOps Certificate", ''' Hi,

Learn how to easily create deep learning predictive models using an end to end MLOps platform in less than 2 hours!

Use an in-platform notebook to do data wrangling, train, and test models. Apply different algorithm families and pick the best model and monitor drift.

Learn more about the workshop here: https://kdnuggets.us12.list-manage.com/track/click?u=4f2891ebb155b23f120ece0bd&id=e6f3b5ec81&e=a876e84d23

All participants who complete the demo will receive a Certificate of Achievement that certifies you have successfully created and deployed a predictive model.

Limited seats only! Reserve today:
https://kdnuggets.us12.list-manage.com/track/click?u=4f2891ebb155b23f120ece0bd&id=1dea847b46&e=a876e84d23

Thanks!
Bindu Reddy
CEO, Abacus.AI

==============================================
Welcome to KDnuggets

Unsubscribe abedrahmanyassen@gmail.com from this list:
https://kdnuggets.us12.list-manage.com/unsubscribe?u=4f2891ebb155b23f120ece0bd&id=b2fa8716d2&e=a876e84d23&c=d1921f331f

Our mailing address is:
KDnuggets
151 Calle de San Francisco
Suite 200 - PMB 5072
San Juan, PR 00901
USA

Forward this email to a friend:
http://us12.forward-to-friend.com/forward?u=4f2891ebb155b23f120ece0bd&id=d1921f331f&e=a876e84d23

Update your profile:
https://kdnuggets.us12.list-manage.com/profile?u=4f2891ebb155b23f120ece0bd&id=b2fa8716d2&e=a876e84d23&c=d1921f331f
''');
