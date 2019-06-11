import 'package:flutter/material.dart';

class MultipleNavigationAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Navigation Drawer"),
        ),
      ),
      drawer: Drawer(
        child: MultipleNavigationDrawer(
          email: "Devefy@gamil.com",
          name: "Abdi hamid",
          profileImg: "assets/muliple_navigation_profile.png",
          background: "assets/muliple_navigation_bg.jpg",
        ),
      ),
      endDrawer: Drawer(
        child: MultipleNavigationDrawer(
          email: "Johndo@gamil.com",
          name: "John doe",
          profileImg: "assets/muliple_navigation_profile_2.jpg",
          background: "assets/muliple_navigation_bg_2.jpg",
        ),
      ),
      body: Center(
        child: Text("Drawer"),
      ),
    );
  }
}


class MultipleNavigationDrawer extends StatelessWidget {

  final String email, name, profileImg, background;
  MultipleNavigationDrawer({this.email, this.name, this.profileImg, this.background});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text(email),
          accountName: Text(name),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage(profileImg),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(background),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          title: Text("Home"),
          trailing: Icon(Icons.home),
          onTap: (){},
        ),
        ListTile(
          title: Text("Notification"),
          trailing: Icon(Icons.notifications),
          onTap: (){},
        ),
        ListTile(
          title: Text("Exit"),
          trailing: Icon(Icons.exit_to_app),
          onTap: (){},
        ),
      ],
    );
  }
}
