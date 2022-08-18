import 'package:flutter/material.dart';
import 'package:practice/pages/Welcome.dart';
import 'package:practice/pages/Menu.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  bool button = false;
  final _formkey = GlobalKey<FormState>();
  String? username='';

  goToHome(BuildContext context) async {
    setState(() {
      button = true;
    });
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menu()));
    setState(() {
      button = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: const Color.fromARGB(255, 255, 255, 255),
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: Material(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: const Icon(Icons.arrow_back_ios_new)),
                      ],
                    ),
                    Image.asset('assets/images/undraw_Login_re_4vu2.png',
                        fit: BoxFit.fill),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              hintText: 'Enter Username',
                              labelText: 'Username'),
                          onChanged: (value) {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            hintText: 'Enter Enter Password',
                            labelText: 'Password'),
                        onChanged: (value) {
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Forgot your password!"),
                            TextButton(
                                onPressed: (() {}),
                                child: const Text('Click Here')),
                          ]),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: ()=>goToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          width: button ? 40 : 100,
                          height: 40,
                          alignment: Alignment.center,
                          child: button
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Builder(builder: (context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont you have an account!"),
                          TextButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Welcome(),
                                    ));
                              }),
                              child: const Text('SignUp Here'))
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
