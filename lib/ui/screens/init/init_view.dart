import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InitView extends StatelessWidget {
  const InitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(
            fontFamily: 'RedHat',
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xff00005C),
        actions: [
          IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This is a snackbar'),
                    backgroundColor: Color(0xff00005C),
                  ),
                );
              }),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo='),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            'Welcome to my app!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // FloatingActionButton(
          //   child: Icon(Icons.arrow_right),
          //   backgroundColor: Color(0xff00005C),
          //   //foregroundColor: Colors.white,
          //   // onPressed: () {
          //   //   Navigator.pushNamed(context, Grocery.routeName);
          //   // },
          // ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                // color: const Color(0xff764abc)

                image: DecorationImage(
                  image: NetworkImage(
                    "https://wallpapercave.com/wp/6yfFRjG.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              accountName: Text(
                'Kamali',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: Text(
                'kamali@gmail.com.com',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/x.png'),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.account_box),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: const Icon(Icons.movie),
                title: new Text("Movies"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: new Text("Shopping"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(Icons.apps),
                title: new Text("Apps"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(Icons.library_music),
                title: new Text("Music"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
