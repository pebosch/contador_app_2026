import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {});
  }
  
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
          floatingActionButton: CustomFloatingActionButton(incrementarFn: incrementar)
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final Function incrementarFn;

  const CustomFloatingActionButton({
    Key? key, required this.incrementarFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon( Icons.remove),
          //child: Text("Añadir"),
          onPressed: null
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Text("0"),
          //child: Text("Añadir"),
          onPressed: null
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon( Icons.add),
          //child: Text("Añadir"),
          onPressed: () => incrementarFn()
        ),
      ],
    );
  }
}