import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:gmail_app/providers/appeared_list_provider.dart';
import 'package:gmail_app/providers/emails_lists_area_provider.dart';
import 'package:gmail_app/providers/side_menu_provider.dart';
import 'package:provider/provider.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SideMenuProvider>(
      context,
      listen: false,
    );
    final providerH = Provider.of<EmailsListAreaProvider>(context , listen:  false ) ;
    return SideMenu(
      style: SideMenuStyle(
        backgroundColor: Colors.grey.shade200,
        selectedColor: Colors.blue.shade100,
        unselectedIconColor: Colors.black,
        hoverColor: Colors.grey.shade300,
        itemWidth: 300,
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
            Image.network(
              "https://gagadget.com/media/post_big/new-gmail-view.jpg",
              height: 80,
            ),
          ],
        ),
      ),
      controller: sideMenuProvider.controller,
      items: [
        SideMenuItem(
          onTap: () {
            providerH.changeAppearedEmailList(EmailList.INBOX);
          },
          title: "Inbox",
          priority: 0,
          iconSize: 20,
          icon: const Icon(
            Icons.inbox,
            color: Colors.black,
          ),
          height: 35,
          titleFontSize: 15,
          itemBorderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        SideMenuItem(
            onTap: () {
              providerH.changeAppearedEmailList(EmailList.STARRED);

            },
            title: "starred",
            priority: 1,
            iconSize: 20,
            icon: const Icon(
              Icons.star_border,
              color: Colors.black,
            ),
            height: 35,
            titleFontSize: 15,
            itemBorderRadius: const BorderRadius.all(Radius.circular(15))),
        SideMenuItem(
          onTap: () {},
          title: "snoozed",
          priority: 2,
          iconSize: 20,
          icon: const Icon(
            Icons.snooze,
          ),
          height: 35,
          titleFontSize: 15,
          itemBorderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        SideMenuItem(
          onTap: () {},
          title: "sent",
          priority: 3,
          iconSize: 20,
          icon: const Icon(
            Icons.send,
          ),
          height: 35,
          titleFontSize: 15,
          itemBorderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        SideMenuItem(
            onTap: () {},
            title: "Drafts",
            priority: 4,
            iconSize: 20,
            icon: const Icon(
              Icons.drafts,
            ),
            height: 35,
            titleFontSize: 15,
            itemBorderRadius: const BorderRadius.all(Radius.circular(15))),
        SideMenuItem(
            onTap: () {},
            title: "More",
            priority: 5,
            iconSize: 20,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
            height: 35,
            titleFontSize: 15,
            itemBorderRadius: const BorderRadius.all(Radius.circular(15))),
      ],
    );
  }
}
/*
What am I going to do is ?
1. making each screen separeted and control them from the main screen by more general provider
2. I am gonna change the names all of them
3. then publish the app on gitHub and then migrate to clean archetecture.
4. I am gonna make it amazing
5. I discovered that my Flutter level is .....
6. From today I can't close my day without writing Flutter code.
 */