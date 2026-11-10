import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  
  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle( fontSize: 25 );
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Contador', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        
        elevation: 20,
      ),
      backgroundColor: Colors.white,
      body: Center(
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Número de clics', style: tamano30),
                  Text('$contador', style: tamano30),
                ],
              ) 
              //Text('Hola mundo desde HomeScreen'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon( Icons.remove),
                //child: Text("Añadir"),
                onPressed:() {
                  print("Pulsación registrada");
                  contador--;
                  setState(() {
                    
                  });
              
                  print('$contador');
              
                },
              ),

              SizedBox( width: 20),

              FloatingActionButton(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon( Icons.add),
                //child: Text("Añadir"),
                onPressed:() {
                  print("Pulsación registrada");
                  contador++;
                  setState(() {
                    
                  });
              
                  print('$contador');
              
                },
              ),
            ],
          ),
    );
  }
}