import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        
        elevation: 20,
      ),
      backgroundColor: Colors.white,
      body: Center(
            child:
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Deliver features faster'),
                  Text('Craft beautiful UIs'),
                ],
              ) 
              //Text('Hola mundo desde HomeScreen'),
          ),
    );
  }

}