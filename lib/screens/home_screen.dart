import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.blue,
        elevation: 20,
      ),
      backgroundColor: Colors.white10,
      body: Center(
            child:
              const Column(
                children: <Widget>[
                  Text('Deliver features faster'),
                  Text('Craft beautiful UIs'),
                  Expanded(
                    child: FittedBox(
                      child: FlutterLogo(),
                    ),
                  ),
                ],
              ) 
              //Text('Hola mundo desde HomeScreen'),
          ),
    );
  }

}