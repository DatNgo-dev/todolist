import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer(
      {super.key}); // the key that can be identified on the widget trees

  Widget buildHeader(BuildContext context) => DrawerHeader(
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Color(0xff764abc)),
      child: Column(
        children: const <Widget>[
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('images/linkedin_photo.jpeg'),
          ),
          Text('FirstName LastName'),
          Text('EmailAddress'),
          // Email
        ],
      ));

  Widget buildMenuItems(BuildContext context) => Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(
                Icons.home), // Leading will display something before the title
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(
                  context); // This will close the drawer after user taps on page

              if (ModalRoute.of(context)?.settings.name == '/') return;

              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(
                Icons.home), // Leading will display something before the title
            title: const Text("Page1"),
            onTap: () {
              Navigator.pop(
                  context); // This will close the drawer after user taps on page

              if (ModalRoute.of(context)?.settings.name == '/page1') return;

              Navigator.pushNamed(context, '/page1');
            },
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[buildHeader(context), buildMenuItems(context)]),
      ),
    );
  }
}
