import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text("JayDev"),
              accountEmail: Text("jaydev@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn3d.iconscout.com/3d/premium/thumb/afro-avatar-6299534-5187866.png"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Jay"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Email"),
            subtitle: Text("jaydev@email.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
