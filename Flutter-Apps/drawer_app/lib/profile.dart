import 'package:drawer_app/main.dart';
import 'package:drawer_app/output.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/contactus.dart' as contactus_;
import 'package:drawer_app/profile.dart' as profile_;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController username = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController tooltip = TextEditingController();

  void printtooltip() {
    setState(() {
      tooltip.text = "";
      if (password.text == confirmpassword.text) {
        Data list = Data(myData: [
          username.text,
          firstname.text,
          lastname.text,
          password.text,
          email.text
        ]);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Output(
                    data: list,
                  )),
        );
      } else {
        tooltip.text = "Password and Confirm Password does not match";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Text(
                    "Register Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                      ),
                      controller: username,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'First Name',
                      ),
                      controller: firstname,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last Name',
                      ),
                      controller: lastname,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                      controller: password,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                      ),
                      controller: confirmpassword,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                      controller: email,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                      child: ElevatedButton(
                    child: const Text("Register"),
                    onPressed: () {
                      setState(() {
                        printtooltip();
                      });
                    },
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                      child: TextField(
                    controller: tooltip,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const contactus_.ContactUs()),
                );
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const profile_.Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
