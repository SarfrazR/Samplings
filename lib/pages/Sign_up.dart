import 'package:flutter/material.dart';
import 'package:practice/pages/Menu.dart';
import 'package:practice/pages/log_in.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/welcome.png",
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.perm_identity),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Full Name",
                          label: Text("Name", textAlign: TextAlign.center)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Username",
                          label: Text("Username", textAlign: TextAlign.center)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Email",
                          label: Text("Email", textAlign: TextAlign.center)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Password",
                          label: Text("Password", textAlign: TextAlign.center)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      scrollPadding: EdgeInsets.zero,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Re-Enter Password",
                          label: Text("Confirm Password",
                              textAlign: TextAlign.center)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    height: 40,
                    width: 87,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Menu()));
                        },
                        child: Row(
                          children: [Text('Next'), Icon(Icons.arrow_forward)],
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      Builder(
                        builder: (context) {
                          return TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Log_in()));
                              },
                              child: Text('Log In'));
                        }
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
