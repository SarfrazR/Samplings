import 'package:flutter/material.dart';
import 'log_in.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 255, 255, 255),
      home: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
          child:  SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Welcoming.png',fit: BoxFit.cover,),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Lets get started!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
                  SizedBox(
                    height: 50,
                  ),
                  FloatingActionButton(
                    splashColor: Colors.white,
                    child: Icon(Icons.arrow_forward,size: 35,),
                    onPressed: (() {
                      Navigator.pop(context);
                      
                  }))
                ],
              ),
            ),
          )));
  }
}