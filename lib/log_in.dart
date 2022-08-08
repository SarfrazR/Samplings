import 'package:flutter/material.dart';
import 'package:practice/Welcome.dart';


class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  bool button = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 255, 255, 255),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                }, child: Icon(Icons.arrow_back_ios_new)),
                Image.asset('assets/images/undraw_Login_re_4vu2.png',
                    fit: BoxFit.fill),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          hintText: 'Enter Username',
                          labelText: 'Username'),
                      onChanged: (value) {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          hintText: 'Enter Enter Password',
                          labelText: 'Password'),
                      onChanged: (value) {}),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Forgot your password!"),
                      TextButton(onPressed: (() {
                        
                      }), child: Text('Click Here')),]),
                ),
                Material(
                  
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurple,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        button = !button;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: button?40:100,
                      height: 40,
                      alignment: Alignment.center,
                      child: button?Icon(Icons.done,color: Colors.white,):Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)
                      ,),),
                
                    ),
                  ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont you have an account!"),
                    TextButton(onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome(),));
                    }), child: Text('SignUp Here'))
                  ],
                )
              ],
          ),
        ),
      )),
        ));
  }
}
