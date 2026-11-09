import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle( fontSize: 25 );

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
                  Text('Deliver features faster', style: tamano30),
                  Text('Craft beautiful UIs', style: tamano30),
                ],
              ) 
              //Text('Hola mundo desde HomeScreen'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon( Icons.add_circle_outline),
            //child: Text("Añadir"),
            onPressed:() {
              print("Probando botón...");
            },
          ),
    );
  }

}